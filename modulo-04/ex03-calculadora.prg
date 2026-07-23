FUNCTION Main()

    LOCAL nA, nB, cOp

    ACCEPT "Primeiro valor: " TO nA
    ACCEPT "Operacao (+, -, *, /, ^, R): " TO cOp
    nA := Val(nA)

    IF Upper(cOp) != "R"
        ACCEPT "Segundo valor: " TO nB
        nB := Val(nB)
    ENDIF

    DO CASE
        CASE cOp == "+"
            QOut("Resultado: " + Str(nA + nB, 10, 2))
        CASE cOp == "-"
            QOut("Resultado: " + Str(nA - nB, 10, 2))
        CASE cOp == "*"
            QOut("Resultado: " + Str(nA * nB, 10, 2))
        CASE cOp == "/"
            IF nB == 0
                QOut("Erro: divisao por zero")
            ELSE
                QOut("Resultado: " + Str(nA / nB, 10, 2))
            ENDIF
        CASE cOp == "^"
            QOut("Resultado: " + Str(nA ^ nB, 10, 2))
        CASE Upper(cOp) == "R"
            QOut("Resultado: " + Str(Sqrt(nA), 10, 2))
        OTHERWISE
            QOut("Operacao invalida")
    ENDCASE

RETURN NIL