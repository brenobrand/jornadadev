SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()

    LOCAL aEstoque := {}
    LOCAL nOpcao, nPos, cCodigo, cNome, cQtd, cPreco

    WHILE .T.

        QOut("========================")
        QOut("1 - Cadastrar produto")
        QOut("2 - Listar produtos")
        QOut("3 - Entrada de estoque")
        QOut("4 - Saida de estoque")
        QOut("5 - Buscar produto")
        QOut("6 - Relatorio")
        QOut("0 - Sair")
        ACCEPT "Opcao: " TO nOpcao
        nOpcao := Val(nOpcao)

        DO CASE
            CASE nOpcao == 1
                ACCEPT "Codigo: " TO cCodigo
                ACCEPT "Nome: " TO cNome
                ACCEPT "Quantidade: " TO cQtd
                ACCEPT "Preco unitario: " TO cPreco
                CadastrarProduto(aEstoque, cCodigo, cNome, Val(cQtd), Val(cPreco))

            CASE nOpcao == 2
                ListarProdutos(aEstoque)

            CASE nOpcao == 3
                ACCEPT "Codigo: " TO cCodigo
                ACCEPT "Quantidade a adicionar: " TO cQtd
                EntradaEstoque(aEstoque, cCodigo, Val(cQtd))

            CASE nOpcao == 4
                ACCEPT "Codigo: " TO cCodigo
                ACCEPT "Quantidade a retirar: " TO cQtd
                SaidaEstoque(aEstoque, cCodigo, Val(cQtd))

            CASE nOpcao == 5
                ACCEPT "Codigo: " TO cCodigo
                nPos := BuscarProduto(aEstoque, cCodigo)
                IF nPos == 0
                    QOut("Produto nao encontrado")
                ELSE
                    QOut("Encontrado na posicao: " + Str(nPos))
                ENDIF

            CASE nOpcao == 6
                RelatorioEstoque(aEstoque)

            CASE nOpcao == 0
                EXIT

            OTHERWISE
                QOut("Opcao invalida")
        ENDCASE

    ENDDO

RETURN NIL