FUNCTION Main()

    LOCAL nIdade, nDependentes, nValorBase, nTotal

    ACCEPT "Idade: " TO nIdade
    ACCEPT "Numero de dependentes: " TO nDependentes
    nIdade := Val(nIdade)
    nDependentes := Val(nDependentes)

    IF nIdade <= 25
        nValorBase := 180
    ELSEIF nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    nTotal := nValorBase + (nDependentes * 90)

    QOut("Valor mensal do plano: " + Str(nTotal, 10, 2))

RETURN NIL