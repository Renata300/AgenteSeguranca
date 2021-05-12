(define (problem problema)
    (:domain agente)
    (:objects
        sala1 sala2 sala3 sala4 corredor1 aberto fechado janela1
    )
    (:init
        (Sala sala1)
        (Sala sala2)
        (Janela janela1)
        (Aberto aberto)
        (Fechado fechado)
        (Corredor corredor1)

        (JanelaStatus janela1 aberto)

        (Porta sala1 sala2 fechado)
        (Porta sala2 sala1 fechado)

        (Porta sala1 corredor1 fechado)
        (Porta corredor1 sala1 fechado)

        (LigacaoEntidades janela1 sala1)
        (LigacaoEntidades sala1 janela1)

        (LigacaoEntidades sala1 corredor1)
        (LigacaoEntidades corredor1 sala1)

        (LigacaoEntidades sala1 sala2)
        (LigacaoEntidades sala2 sala1)

        (PosicaoAgente corredor1)

    )
    (:goal

        (
            and
            (JanelaStatus janela1 fechado)
            (PosicaoAgente corredor1)

        )

    )
)