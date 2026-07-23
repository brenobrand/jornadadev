FUNCTION Main()

    LOCAL aV := {}
    LOCAL nI, cValor, nSoma := 0, nMedia

    FOR nI := 1 TO 10
        ACCEPT "Numero " + Str(nI) + ": " TO cValor
        AADD(aV, Val(cValor))
    NEXT

    ASORT(aV)

    QOut("Numeros em ordem crescente:")
    FOR nI := 1 TO Len(aV)
        QOut(Str(aV[nI], 10, 2))
        nSoma += aV[nI]
    NEXT

    nMedia := nSoma / Len(aV)

    QOut("Soma: " + Str(nSoma, 10, 2))
    QOut("Media: " + Str(nMedia, 10, 2))
    QOut("Maior: " + Str(aV[Len(aV)], 10, 2))
    QOut("Menor: " + Str(aV[1], 10, 2))

RETURN NIL