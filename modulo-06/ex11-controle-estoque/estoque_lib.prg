FUNCTION CadastrarProduto(aEstoque, cCodigo, cNome, nQtd, nPreco)
    AADD(aEstoque, {cCodigo, cNome, nQtd, nPreco})
RETURN NIL

FUNCTION ListarProdutos(aEstoque)
    LOCAL nI

    IF Len(aEstoque) == 0
        QOut("Nenhum produto cadastrado")
        RETURN NIL
    ENDIF

    FOR nI := 1 TO Len(aEstoque)
        QOut(aEstoque[nI][1] + " - " + aEstoque[nI][2] + " - Qtd: " + Str(aEstoque[nI][3]) + " - Preco: " + Str(aEstoque[nI][4], 10, 2))
    NEXT

RETURN NIL

FUNCTION BuscarProduto(aEstoque, cCodigo)
    LOCAL nI

    FOR nI := 1 TO Len(aEstoque)
        IF aEstoque[nI][1] == cCodigo
            RETURN nI
        ENDIF
    NEXT

RETURN 0

FUNCTION EntradaEstoque(aEstoque, cCodigo, nQtd)
    LOCAL nPos := BuscarProduto(aEstoque, cCodigo)

    IF nPos == 0
        QOut("Produto nao encontrado")
        RETURN .F.
    ENDIF

    aEstoque[nPos][3] += nQtd

RETURN .T.

FUNCTION SaidaEstoque(aEstoque, cCodigo, nQtd)
    LOCAL nPos := BuscarProduto(aEstoque, cCodigo)

    IF nPos == 0
        QOut("Produto nao encontrado")
        RETURN .F.
    ENDIF

    IF aEstoque[nPos][3] < nQtd
        QOut("Estoque insuficiente")
        RETURN .F.
    ENDIF

    aEstoque[nPos][3] -= nQtd

RETURN .T.

FUNCTION RelatorioEstoque(aEstoque)
    LOCAL nI, nValorItem, nTotal := 0

    FOR nI := 1 TO Len(aEstoque)
        nValorItem := aEstoque[nI][3] * aEstoque[nI][4]
        QOut(aEstoque[nI][2] + " - Valor em estoque: " + Str(nValorItem, 10, 2))
        nTotal += nValorItem
    NEXT

    QOut("Total geral: " + Str(nTotal, 10, 2))

RETURN NIL