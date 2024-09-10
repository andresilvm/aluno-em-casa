# Exercicio-01

# Projeto estruturado utlizando o Spring Boot e adcionando Spring Web, Spring Data JPA, PostgreSQL Driver e Lombok como dependencias, para nos ajudar na arquitetura, organizacao e comunicacao com o banco de dados.

# O projeto segue uma arquitetura tradicional de camadas, seguindo o padrao MVC (Model-View-Controller), modelo esse que viza facilitar tanto a configuracao do projeto quanto a manutencao do mesmo.

# Model: A classe Aluno é uma entidade JPA gerenciada pelo Spring Data JPA.
# Repository: AlunoRepository é responsável por lidar com operações de banco de dados e foi injetado no AlunoService.
# Service: AlunoService contém a lógica de negócios e utiliza AlunoRepository para interagir com o banco de dados.
# Controller: AlunoController expõe o endpoint /alunos para criação de alunos.

# Criamos um metodo chamado criarAluno que é responsavel pela criacao de um novo registro da entidade Aluno na aplicacao.
# Utilizamos o insominia para executar o metodo post e verificar se nossa aplicacao esta funcionando e se comunicando com o banco de dados.
# Apos consulta no banco, foi verificado que o mesmo recebeu as informacoes que foram criadas no objeto aluno.

![image](https://github.com/user-attachments/assets/634e76a6-83eb-4967-8c53-0df16414a461)

![image](https://github.com/user-attachments/assets/a6b47a30-191b-4d6b-943f-db538555c6f9)

