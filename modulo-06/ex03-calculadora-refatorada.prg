FUNCTION Main()

    LOCAL nA, nB, cOp, uResultado

    nA := LerNumero("Primeiro valor: ")
    cOp := LerOperacao()

    IF Upper(cOp) != "R"
        nB := LerNumero("Segundo valor: ")
    ELSE
        nB := 0
    ENDIF

    uResultado := Calcular(nA, nB, cOp)
    MostrarResultado(uResultado)

RETURN NIL

FUNCTION LerNumero(cMsg)
    LOCAL cValor
    ACCEPT cMsg TO cValor
RETURN Val(cValor)

FUNCTION LerOperacao()
    LOCAL cOp
    ACCEPT "Operacao (+, -, *, /, ^, R): " TO cOp
RETURN cOp

FUNCTION Calcular(nA, nB, cOp)
    LOCAL uResultado

    DO CASE
        CASE cOp == "+"
            uResultado := nA + nB
        CASE cOp == "-"
            uResultado := nA - nB
        CASE cOp == "*"
            uResultado := nA * nB
        CASE cOp == "/"
            IF nB == 0
                uResultado := .F.
            ELSE
                uResultado := nA / nB
            ENDIF
        CASE cOp == "^"
            uResultado := nA ^ nB
        CASE Upper(cOp) == "R"
            uResultado := Sqrt(nA)
        OTHERWISE
            uResultado := NIL
    ENDCASE

RETURN uResultado

FUNCTION MostrarResultado(uResultado)
    IF uResultado == NIL
        QOut("Operacao invalida")
    ELSEIF uResultado == .F.
        QOut("Erro: divisao por zero")
    ELSE
        QOut("Resultado: " + Str(uResultado, 10, 2))
    ENDIF
RETURN NIL