SET PROCEDURE TO matematica.prg

FUNCTION Main()

    QOut("Fatorial de 5: " + Str(FatorialN(5)))
    QOut("7 e primo? " + IIf(EhPrimo(7), "Sim", "Nao"))
    QOut("MMC(4,6): " + Str(MMC(4, 6)))
    QOut("MDC(4,6): " + Str(MDC(4, 6)))

RETURN NIL