package br.com.alunoemcasa.api.service;

import br.com.alunoemcasa.api.model.Aluno;
import br.com.alunoemcasa.api.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AlunoService {

    @Autowired
    AlunoRepository alunoRepository;

    public void criarAluno(Aluno aluno  ) {
        alunoRepository.save(aluno);
    }
}
