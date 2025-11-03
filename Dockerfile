# ---- Estágio 1: Build (Compilação) ----
# Usamos uma imagem que já tem o Maven e o JDK 17
FROM maven:3.8.5-openjdk-17 AS build

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia primeiro o pom.xml para otimizar o cache de dependências
COPY pom.xml .

# Copia o restante do código-fonte
COPY src ./src

# Executa o build do Maven. O "-DskipTests" pula os testes durante o build.
RUN mvn clean package -DskipTests

# ---- Estágio 2: Run (Execução) ----
# Usamos uma imagem JRE (Java Runtime Environment) enxuta, apenas para rodar
FROM eclipse-temurin:17-jre-focal

WORKDIR /app

# Copia o arquivo .jar que foi gerado no Estágio 1 (da pasta target/)
# para dentro do novo container.
COPY --from=build /app/target/*.jar app.jar

# Expõe a porta 8080 (padrão do Spring Boot)
EXPOSE 8080

# Comando para iniciar a aplicação quando o container rodar
ENTRYPOINT ["java", "-jar", "app.jar"]