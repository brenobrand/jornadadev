FUNCTION Main()

    LOCAL cJogadaUsuario, cJogadaCPU, cContinuar

    WHILE .T.

        ACCEPT "Sua jogada (PEDRA, PAPEL, TESOURA): " TO cJogadaUsuario
        cJogadaUsuario := Upper(cJogadaUsuario)

        IF !ValidarJogada(cJogadaUsuario)
            QOut("Jogada invalida!")
            LOOP
        ENDIF

        cJogadaCPU := SortearJogadaCPU()
        QOut("CPU jogou: " + cJogadaCPU)
        QOut(DefinirVencedor(cJogadaUsuario, cJogadaCPU))

        ACCEPT "Jogar novamente? (S/N): " TO cContinuar
        IF Upper(cContinuar) != "S"
            EXIT
        ENDIF

    ENDDO

RETURN NIL

FUNCTION SortearJogadaCPU()
    LOCAL aJogadas := {"PEDRA", "PAPEL", "TESOURA"}
RETURN aJogadas[HB_RandomInt(1, 3)]

FUNCTION ValidarJogada(cJogada)
RETURN cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA"

FUNCTION DefinirVencedor(cJogada1, cJogada2)

    IF cJogada1 == cJogada2
        RETURN "Empate!"
    ENDIF

    IF (cJogada1 == "PEDRA" .AND. cJogada2 == "TESOURA") .OR. ;
       (cJogada1 == "PAPEL" .AND. cJogada2 == "PEDRA") .OR. ;
       (cJogada1 == "TESOURA" .AND. cJogada2 == "PAPEL")
        RETURN "Voce venceu!"
    ENDIF

RETURN "CPU venceu!"