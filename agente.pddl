;Header and description

(define (domain agente)

    ;remove requirements that are not needed
    (:requirements :strips)

    (:predicates
        (Corredor ?corredor)
        (Sala ?sala)
        (Janela ?janela)
        (Lampada ?lampada)
        (PosicaoAgente ?local)
        (Aberto ?aberto)
        (Fechado ?fechado)
        (Ligado ?ligado)
        (Desligado ?desligado)
        (LampadaStatus ?lampada ?status)
        (JanelaStatus ?janela ?status)
        (Porta ?local1 ?local2 ?status)
        (LigacaoEntidades ?entidade1 ?entidade2)
    )

    (:action abrir_porta
        :parameters (?sala_para_entrar ?local_atual ?fechado ?aberto ?lampada ?ligado)
        :precondition (and
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

    (:action fechar_porta
        :parameters (?local_para_anterior ?local_atual ?porta ?aberto ?fechado)
        :precondition (and
            (Aberto ?aberto)
            (Fechado ?fechado)

            (Porta ?local_para_anterior ?local_atual ?aberto)
            (Porta ?local_atual ?local_para_anterior ?aberto)

            (LigacaoEntidades ?local_para_anterior ?local_atual)
            (LigacaoEntidades ?local_atual ?local_para_anterior)

            (PosicaoAgente ?local_atual)
        )
        :effect (and
            (Porta ?local_para_anterior ?local_atual ?fechado)
            (Porta ?local_atual ?local_para_anterior ?fechado)
            (not(Porta ?local_para_anterior ?local_atual ?aberto))
            (not(Porta ?local_atual ?local_para_anterior ?aberto))
        )
    )

    (:action entrar_sala_por_corredor
        :parameters (?local_para_entrar ?local_atual ?porta ?aberto ?fechado)
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
        :parameters (?local_para_entrar ?sala_atual ?porta ?aberto ?fechado ?lampada ?desligado)
        :precondition (and
            (Sala ?sala_atual)
            (Aberto ?aberto)
            (Lampada ?lampada)
            (Desligado ?desligado)
            (Porta ?sala_atual ?local_para_entrar ?aberto)
            (Porta ?local_para_entrar ?sala_atual ?aberto)
            (LigacaoEntidades ?local_para_entrar ?sala_atual)
            (LigacaoEntidades ?sala_atual ?local_para_entrar)

            (LigacaoEntidades ?sala_atual ?lampada)
            (LigacaoEntidades ?lampada ?sala_atual)
            (LampadaStatus ?lampada ?desligado)
            (PosicaoAgente ?sala_atual)
        )
        :effect (and
            (PosicaoAgente ?local_para_entrar)
            (not (PosicaoAgente ?sala_atual))
        )
    )

    (:action fechar_janela
        :parameters ( ?sala_atual ?janela ?fechado ?aberto ?lampada ?ligado
        )
        :precondition (and
            (Sala ?sala_atual)
            (Janela ?janela)
            (Lampada ?lampada)
            (PosicaoAgente ?sala_atual)
            (LigacaoEntidades ?janela ?sala_atual)
            (LigacaoEntidades ?sala_atual ?janela)
            (JanelaStatus ?janela ?aberto)
            (LampadaStatus ?lampada ?ligado)
            (Fechado ?fechado)
            (Aberto ?aberto)
            (Ligado ?ligado)
            (LigacaoEntidades ?sala_atual ?lampada)
            (LigacaoEntidades ?lampada ?sala_atual)
        )
        :effect (and
            (not (JanelaStatus ?janela ?aberto))
            (JanelaStatus ?janela ?fechado)

        )
    )

    (:action acender_luz
        :parameters ( ?sala_atual ?ligado ?desligado ?lampada)
        :precondition (and
            (Sala ?sala_atual)
            (Ligado ?ligado)
            (Desligado ?desligado)
            (Lampada ?lampada)
            (LampadaStatus ?lampada ?desligado)
            (PosicaoAgente ?sala_atual)
            (LigacaoEntidades ?sala_atual ?lampada)
            (LigacaoEntidades ?lampada ?sala_atual)
        )
        :effect (and
            (not (LampadaStatus ?lampada ?desligado))
            (LampadaStatus ?lampada ?ligado)
        )
    )
    (:action desligar_luz
        :parameters ( ?sala_atual ?ligado ?desligado ?lampada)
        :precondition (and
            (Sala ?sala_atual)
            (Ligado ?ligado)
            (Desligado ?desligado)
            (Lampada ?lampada)
            (LampadaStatus ?lampada ?ligado)
            (PosicaoAgente ?sala_atual)
            (LigacaoEntidades ?sala_atual ?lampada)
            (LigacaoEntidades ?lampada ?sala_atual)
        )
        :effect (and
            (not (LampadaStatus ?lampada ?ligado))
            (LampadaStatus ?lampada ?desligado)
        )
    )
)