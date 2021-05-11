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
        (PortaSala ?sala ?status)
        (LigacaoEntidades ?entidade1 ?entidade2)
    )

    (:action entrar_sala
        :parameters (?sala_para_entrar ?local_atual ?corredor ?portaSala ?aberto)
        :precondition (and
            (Sala ?sala_para_entrar)
            (Aberto ?aberto)
            (PortaSala ?sala_para_entrar ?aberto)
            (LigacaoEntidades ?sala_para_entrar ?local_atual)
            (PosicaoAgente ?local_atual)
        )
        :effect (and
            (PosicaoAgente ?sala_para_entrar)
        )
    )
    (:action fechar_janela
        :parameters ( 
            ?sala_atual 
            ?janela
            ?fechado 
            ?aberto
        )
        :precondition (and
            (Sala ?sala_atual)
            (Janela ?janela)
            (PosicaoAgente ?sala_atual)
            (LigacaoEntidades ?janela ?sala_atual)
            (JanelaStatus ?janela ?aberto)
            (Fechado ?fechado)
            (Aberto ?aberto)
        )
        :effect (and
            (not (JanelaStatus ?janela ?aberto))
            (JanelaStatus ?janela ?fechado)

        )
    )

    (:action abrir_sala
        :parameters (?sala_para_entrar ?sala_atual ?fechado ?aberto)
        :precondition (and
            (Sala ?sala_para_entrar)
            (Sala ?sala_atual)

            (LigacaoEntidades ?sala_para_entrar ?sala_atual)
            (Fechado ?fechado)
            (Aberto ?aberto)
            (PortaSala ?sala_para_entrar ?fechado)
            (PosicaoAgente ?sala_atual)
        )
        :effect (and
            (not (PortaSala ?sala_para_entrar ?fechado))
            (PortaSala ?sala_para_entrar ?aberto)

        )
    )

    (:action abrir_sala
        :parameters (?sala_para_entrar ?local_atual ?fechado ?aberto)
        :precondition (and
            (Sala ?sala_para_entrar)
            (Corredor ?local_atual)
            (Fechado ?fechado)
            (Aberto ?aberto)

            (LigacaoEntidades ?sala_para_entrar ?local_atual)
            (PortaSala ?sala_para_entrar ?fechado)
            (PosicaoAgente ?local_atual)
        )
        :effect (and
            (not (PortaSala ?sala_para_entrar ?fechado))
            (PortaSala ?sala_para_entrar ?aberto)

        )
    )

)