FUNCTION Main()

    LOCAL cValor, nValor, nTotal := 0, nQtd := 0

    ACCEPT "Digite um valor (0 para parar): " TO cValor
    nValor := Val(cValor)

    WHILE nValor != 0
        nTotal += nValor
        nQtd++
        ACCEPT "Digite um valor (0 para parar): " TO cValor
        nValor := Val(cValor)
    ENDDO

    QOut("Soma total: " + Str(nTotal, 10, 2))
    QOut("Quantidade: " + Str(nQtd))

RETURN NIL