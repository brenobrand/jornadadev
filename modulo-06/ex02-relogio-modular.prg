FUNCTION Main()

    LOCAL nI

    FOR nI := 1 TO 30
        ExibirHora(FormatarHora(ObterHora()))
        Inkey(1)
    NEXT

RETURN NIL

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)
RETURN cHora

FUNCTION ExibirHora(cHora)
    QOut(cHora)
RETURN NIL