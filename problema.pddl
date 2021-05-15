(define (problem problema)
    (:domain agente)
    (:objects
        sala1 sala2 sala3 sala4 sala5 sala6 
        janela1 janela2 janela3 janela4 janela5 janela6 janela7 janela8
        lampada1 lampada2 lampada3 lampada4 lampada5 lampada6
        corredor1 aberto fechado ligado desligado
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
        (Sala sala5)
        (Sala sala6)

        (Janela janela1)
        (Janela janela2)
        (Janela janela3)
        (Janela janela4)

        (Janela janela5)
        (Janela janela6)
        (Janela janela7)
        (Janela janela8)

        (Lampada lampada1)
        (Lampada lampada2)
        (Lampada lampada3)

        (Lampada lampada4)
        (Lampada lampada5)
        (Lampada lampada6)

        (JanelaStatus janela1 aberto)
        (JanelaStatus janela2 aberto)
        (JanelaStatus janela3 aberto)
        (JanelaStatus janela4 aberto)
        (JanelaStatus janela5 aberto)
        (JanelaStatus janela6 aberto)
        (JanelaStatus janela7 aberto)
        (JanelaStatus janela8 aberto)

        (LampadaStatus lampada1 desligado)
        (LampadaStatus lampada2 desligado)
        (LampadaStatus lampada3 desligado)
        (LampadaStatus lampada4 desligado)
        (LampadaStatus lampada5 desligado)
        (LampadaStatus lampada6 desligado)

        (Porta sala1 corredor1 fechado)
        (Porta corredor1 sala1 fechado)

        (Porta sala1 sala2 fechado)
        (Porta sala2 sala1 fechado)

        (Porta sala2 sala3 fechado)
        (Porta sala3 sala2 fechado)

        (Porta sala4 corredor1 fechado)
        (Porta corredor1 sala4 fechado)

        (Porta sala4 sala5 fechado)
        (Porta sala5 sala4 fechado)

        (Porta sala5 sala6 fechado)
        (Porta sala6 sala5 fechado)

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

        (LigacaoEntidades sala3 lampada3)
        (LigacaoEntidades lampada3 sala3)

        (LigacaoEntidades janela3 sala3)
        (LigacaoEntidades sala3 janela3)

        (LigacaoEntidades janela4 sala3)
        (LigacaoEntidades sala3 janela4)

        (LigacaoEntidades janela5 sala4)
        (LigacaoEntidades sala4 janela5)

        (LigacaoEntidades sala4 corredor1)
        (LigacaoEntidades corredor1 sala4)

        (LigacaoEntidades sala4 lampada4)
        (LigacaoEntidades lampada4 sala4)

        (LigacaoEntidades sala4 sala5)
        (LigacaoEntidades sala5 sala4)

        (LigacaoEntidades sala5 lampada5)
        (LigacaoEntidades lampada5 sala5)

        (LigacaoEntidades janela6 sala5)
        (LigacaoEntidades sala5 janela6)

        (LigacaoEntidades sala5 sala6)
        (LigacaoEntidades sala6 sala5)

        (LigacaoEntidades sala6 lampada6)
        (LigacaoEntidades lampada6 sala6)

        (LigacaoEntidades janela7 sala6)
        (LigacaoEntidades sala6 janela7)

        (LigacaoEntidades janela8 sala6)
        (LigacaoEntidades sala6 janela8)

        (PosicaoAgente corredor1)
    )
    (:goal

        (
            and
            (JanelaStatus janela1 fechado)
            (JanelaStatus janela2 fechado)
            (JanelaStatus janela3 fechado)
            (JanelaStatus janela4 fechado)

            (JanelaStatus janela5 fechado)
            (JanelaStatus janela6 fechado)
            (JanelaStatus janela7 fechado)
            (JanelaStatus janela8 fechado)

            (Porta sala1 corredor1 fechado)
            (Porta corredor1 sala1 fechado)
    
            (Porta sala1 sala2 fechado)
            (Porta sala2 sala1 fechado)
    
            (Porta sala2 sala3 fechado)
            (Porta sala3 sala2 fechado)
    
            (Porta sala4 corredor1 fechado)
            (Porta corredor1 sala4 fechado)
    
            (Porta sala4 sala5 fechado)
            (Porta sala5 sala4 fechado)
    
            (Porta sala5 sala6 fechado)
            (Porta sala6 sala5 fechado)

            (PosicaoAgente corredor1)

        )

    )
)