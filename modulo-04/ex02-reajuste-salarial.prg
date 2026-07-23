FUNCTION Main()

    LOCAL nSalario, nNovoSalario

    ACCEPT "Salario atual: " TO nSalario
    nSalario := Val(nSalario)

    IF nSalario < 1000
        nNovoSalario := nSalario * 1.15
    ELSEIF nSalario >= 1000 .AND. nSalario < 2000
        nNovoSalario := nSalario * 1.12
    ELSEIF nSalario >= 2000 .AND. nSalario < 4000
        nNovoSalario := nSalario * 1.08
    ELSE
        nNovoSalario := nSalario * 1.05
    ENDIF

    QOut("Novo salario: " + Str(nNovoSalario, 10, 2))

RETURN NIL