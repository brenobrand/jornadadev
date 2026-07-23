FUNCTION Main()

    LOCAL aCarrinho := {}
    LOCAL cNome, cPreco, cContinuar, nI, nTotal := 0

    WHILE .T.

        ACCEPT "Nome do produto: " TO cNome
        ACCEPT "Preco: " TO cPreco

        AADD(aCarrinho, {cNome, Val(cPreco)})

        ACCEPT "Adicionar outro item? (S/N): " TO cContinuar
        IF Upper(cContinuar) != "S"
            EXIT
        ENDIF

    ENDDO

    QOut("=== Itens do carrinho ===")
    FOR nI := 1 TO Len(aCarrinho)
        QOut(aCarrinho[nI][1] + " - " + Str(aCarrinho[nI][2], 10, 2))
        nTotal += aCarrinho[nI][2]
    NEXT

    QOut("Total: " + Str(nTotal, 10, 2))

RETURN NIL