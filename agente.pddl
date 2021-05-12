;Header and description

(define (domain agente)

    ;remove requirements that are not needed
    (:requirements :strips)

    (:predicates
        (Corredor ?corredor)
        (Sala ?sala)
        (Janela ?janela)
        (PosicaoAgente ?local)
        (Aberto ?aberto)
        (Fechado ?fechado)
        (JanelaStatus ?janela ?status)
        (Porta ?local1 ?local2 ?status)
        (LigacaoEntidades ?entidade1 ?entidade2)
    )

    (:action abrir_sala
        :parameters (?sala_para_entrar ?local_atual ?fechado ?aberto)
        :precondition (and
            (Sala ?sala_para_entrar)
            (Fechado ?fechado)
            (Aberto ?aberto)
            (PosicaoAgente ?local_atual)

            (LigacaoEntidades ?sala_para_entrar ?local_atual)
            (LigacaoEntidades ?local_atual ?sala_para_entrar)
            (Porta ?sala_para_entrar ?local_atual ?fechado)
            (Porta ?local_atual ?sala_para_entrar ?fechado)
        )
        :effect (and
            (not (Porta ?sala_para_entrar ?local_atual ?fechado))
            (not (Porta ?local_atual ?sala_para_entrar ?fechado))
            (Porta ?sala_para_entrar ?local_atual ?aberto)
            (Porta ?local_atual ?sala_para_entrar ?aberto)
        )
    )
    
    (:action entrar_sala_por_corredor
        :parameters (?local_para_entrar ?local_atual ?porta ?aberto)
        :precondition (and
            (Corredor ?local_atual)
            (Aberto ?aberto)
            (Porta ?local_para_entrar ?local_atual ?aberto)
            (Porta ?local_atual ?local_para_entrar ?aberto)
            (LigacaoEntidades ?local_para_entrar ?local_atual)
            (LigacaoEntidades ?local_atual ?local_para_entrar)
            (PosicaoAgente ?local_atual)
        )
        :effect (and
            (PosicaoAgente ?local_para_entrar)
            (not (PosicaoAgente ?local_atual))
        )
    )

    (:action entrar_local_por_sala
        :parameters (?local_para_entrar ?sala_atual ?porta ?aberto)
        :precondition (and
            (Sala ?sala_atual)
            (Aberto ?aberto)
            (Porta ?sala_atual ?local_para_entrar ?aberto)
            (Porta ?local_para_entrar ?sala_atual ?aberto)
            (LigacaoEntidades ?local_para_entrar ?sala_atual)
            (LigacaoEntidades ?sala_atual ?local_para_entrar)
            (PosicaoAgente ?sala_atual)
        )
        :effect (and
            (PosicaoAgente ?local_para_entrar)
            (not (PosicaoAgente ?sala_atual))
        )
    )

    (:action fechar_janela
        :parameters ( ?sala_atual ?janela ?fechado ?aberto
        )
        :precondition (and
            (Sala ?sala_atual)
            (Janela ?janela)
            (PosicaoAgente ?sala_atual)
            (LigacaoEntidades ?janela ?sala_atual)
            (LigacaoEntidades ?sala_atual ?janela)
            (JanelaStatus ?janela ?aberto)
            (Fechado ?fechado)
            (Aberto ?aberto)
        )
        :effect (and
            (not (JanelaStatus ?janela ?aberto))
            (JanelaStatus ?janela ?fechado)

        )
    )

)