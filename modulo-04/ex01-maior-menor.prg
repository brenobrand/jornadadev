FUNCTION Main()

    LOCAL nA, nB

    ACCEPT "Digite o primeiro valor: " TO nA
    ACCEPT "Digite o segundo valor: " TO nB
    nA := Val(nA)
    nB := Val(nB)

    IF nA == nB
        QOut("Os valores sao iguais")
    ELSE
        IF nA > nB
            QOut("Maior: " + Str(nA))
            QOut("Menor: " + Str(nB))
        ELSE
            QOut("Maior: " + Str(nB))
            QOut("Menor: " + Str(nA))
        ENDIF
    ENDIF

RETURN NIL