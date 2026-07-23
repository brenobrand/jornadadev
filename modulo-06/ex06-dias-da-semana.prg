FUNCTION Main()

    LOCAL aDias := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
    LOCAL nDia

    ACCEPT "Numero do dia (1-7): " TO nDia
    nDia := Val(nDia)

    IF nDia >= 1 .AND. nDia <= 7
        QOut(aDias[nDia])
    ELSE
        QOut("Dia invalido")
    ENDIF

RETURN NIL