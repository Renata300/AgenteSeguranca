(define (problem problema)
    (:domain agente)
    (:objects
        sala1 sala2 sala3 sala4 janela1 janela2 janela3 janela4 lampada1 lampada2 lampada3 lampada4 corredor1 aberto fechado ligado desligado
    )
    (:init
        (Aberto aberto)
        (Fechado fechado)
        (Ligado ligado)
        (Desligado desligado)

        (Corredor corredor1)

        (Sala sala1)
        (Sala sala2)
        (Sala sala3)
        (Sala sala4)

        (Janela janela1)
        (Janela janela2)
        (Janela janela3)
        (Janela janela4)

        (JanelaStatus janela1 aberto)
        (JanelaStatus janela2 aberto)
        (JanelaStatus janela3 aberto)
        (JanelaStatus janela4 aberto)

        (Lampada lampada1)
        (Lampada lampada2)
        (Lampada lampada3)
        (Lampada lampada4)

        (LampadaStatus lampada1 desligado)
        (LampadaStatus lampada2 desligado)
        (LampadaStatus lampada3 desligado)
        (LampadaStatus lampada4 desligado)

        (Porta sala1 corredor1 fechado)
        (Porta corredor1 sala1 fechado)

        (Porta sala1 sala2 fechado)
        (Porta sala2 sala1 fechado)

        (Porta sala2 sala3 fechado)
        (Porta sala3 sala2 fechado)

        (LigacaoEntidades janela1 sala1)
        (LigacaoEntidades sala1 janela1)

        (LigacaoEntidades sala1 corredor1)
        (LigacaoEntidades corredor1 sala1)

        (LigacaoEntidades sala1 lampada1)
        (LigacaoEntidades lampada1 sala1)

        (LigacaoEntidades sala1 sala2)
        (LigacaoEntidades sala2 sala1)

        (LigacaoEntidades sala2 lampada2)
        (LigacaoEntidades lampada2 sala2)

        (LigacaoEntidades janela2 sala2)
        (LigacaoEntidades sala2 janela2)

        (LigacaoEntidades sala3 sala2)
        (LigacaoEntidades sala2 sala3)

        (LigacaoEntidades janela3 sala3)
        (LigacaoEntidades sala3 janela3)

        (LigacaoEntidades sala3 lampada3)
        (LigacaoEntidades lampada3 sala3)

        (LigacaoEntidades janela4 sala3)
        (LigacaoEntidades sala3 janela4)

        (PosicaoAgente corredor1)
    )
    (:goal

        (
            and
            (JanelaStatus janela1 fechado)
            (JanelaStatus janela2 fechado)
            (JanelaStatus janela3 fechado)
            (JanelaStatus janela4 fechado)

            (Porta sala1 corredor1 fechado)
            (Porta corredor1 sala1 fechado)

            (Porta sala1 sala2 fechado)
            (Porta sala2 sala1 fechado)

            (Porta sala2 sala3 fechado)
            (Porta sala3 sala2 fechado)

            (PosicaoAgente corredor1)

        )

    )
)