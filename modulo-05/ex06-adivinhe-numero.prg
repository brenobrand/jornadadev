FUNCTION Main()

    LOCAL nSecreto, nPalpite, cPalpite, nI, lAcertou := .F.

    nSecreto := HB_RandomInt(1, 100)

    FOR nI := 1 TO 7

        ACCEPT "Tentativa " + Str(nI) + " - Digite um numero: " TO cPalpite
        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto
            QOut("Voce acertou!")
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            QOut("O numero secreto e maior")
        ELSE
            QOut("O numero secreto e menor")
        ENDIF

    NEXT

    IF !lAcertou
        QOut("Voce esgotou as tentativas!")
    ENDIF

    QOut("O numero secreto era: " + Str(nSecreto))

RETURN NIL