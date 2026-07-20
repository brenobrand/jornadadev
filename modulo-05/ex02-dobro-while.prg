FUNCTION Main()

    LOCAL cValor, nValor

    ACCEPT "Digite um valor (0 ou negativo para sair): " TO cValor
    nValor := Val(cValor)

    WHILE nValor > 0
        QOut("Dobro: " + Str(nValor * 2))
        ACCEPT "Digite um valor (0 ou negativo para sair): " TO cValor
        nValor := Val(cValor)
    ENDDO

RETURN NIL