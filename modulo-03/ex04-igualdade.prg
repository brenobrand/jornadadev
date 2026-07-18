FUNCTION Main()

    LOCAL cCompleta := "Harbour"
    LOCAL cParcial  := "Harb"

    QOut("Usando = (igualdade parcial):")
    IF cCompleta = cParcial
        QOut("Sao iguais (=)")
    ELSE
        QOut("Sao diferentes (=)")
    ENDIF

    QOut("Usando == (igualdade exata):")
    IF cCompleta == cParcial
        QOut("Sao iguais (==)")
    ELSE
        QOut("Sao diferentes (==)")
    ENDIF

RETURN NIL