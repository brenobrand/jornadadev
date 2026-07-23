FUNCTION Main()

    LOCAL aV := {}
    LOCAL nI, cValor

    FOR nI := 1 TO 10
        ACCEPT "Numero " + Str(nI) + ": " TO cValor
        AADD(aV, Val(cValor))
    NEXT

    BubbleSort(aV)

    QOut("Array ordenado:")
    FOR nI := 1 TO Len(aV)
        QOut(Str(aV[nI], 10, 2))
    NEXT

RETURN NIL

FUNCTION BubbleSort(aVetor)
    LOCAL nI, nJ, nTemp

    FOR nI := 1 TO Len(aVetor) - 1
        FOR nJ := 1 TO Len(aVetor) - nI
            IF aVetor[nJ] > aVetor[nJ + 1]
                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
            ENDIF
        NEXT
    NEXT

RETURN NIL