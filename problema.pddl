(define (problem problema)
    (:domain agente)
    (:objects
        sala1 sala2 sala3 sala4 janela1 janela2 janela3 janela4 corredor1 aberto fechado
    )
    (:init
        (Aberto aberto)
        (Fechado fechado)

        (Sala sala1)
        (Sala sala2)
        (Sala sala3)

        (Corredor corredor1)

        (Janela janela1)
        (Janela janela2)
        (Janela janela3)
        (Janela janela4)

        (JanelaStatus janela1 aberto)
        (JanelaStatus janela2 aberto)
        (JanelaStatus janela3 aberto)
        (JanelaStatus janela4 aberto)

        (Porta sala1 corredor1 fechado)
        (Porta corredor1 sala1 fechado)

        (Porta sala1 sala2 fechado)
        (Porta sala2 sala1 fechado)

        (Porta sala2 sala3 fechado)
        (Porta sala3 sala2 fechado)

        (LigacaoEntidades janela1 sala1)
        (LigacaoEntidades sala1 janela1)

        (LigacaoEntidades janela2 sala2)
        (LigacaoEntidades sala2 janela2)

        (LigacaoEntidades janela3 sala3)
        (LigacaoEntidades sala3 janela3)

        (LigacaoEntidades janela4 sala3)
        (LigacaoEntidades sala3 janela4)

        (LigacaoEntidades sala1 corredor1)
        (LigacaoEntidades corredor1 sala1)

        (LigacaoEntidades sala1 sala2)
        (LigacaoEntidades sala2 sala1)

        (LigacaoEntidades sala3 sala2)
        (LigacaoEntidades sala2 sala3)

        (PosicaoAgente corredor1)
    )
    (:goal

        (
            and
            (JanelaStatus janela1 fechado)
            (JanelaStatus janela2 fechado)

            (PosicaoAgente corredor1)

        )

    )
)