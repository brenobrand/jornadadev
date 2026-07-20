FUNCTION Main()

    LOCAL cNome, cDisc, cN1, cN2, cContinuar
    LOCAL nN1, nN2, nMedia

    WHILE .T.

        cNome := ""
        WHILE Len(Trim(cNome)) == 0
            ACCEPT "Nome: " TO cNome
        ENDDO

        cDisc := ""
        WHILE !(Len(cDisc) == 3 .AND. cDisc == Upper(cDisc))
            ACCEPT "Disciplina (3 letras maiusculas): " TO cDisc
        ENDDO

        nN1 := -1
        WHILE nN1 < 0 .OR. nN1 > 10
            ACCEPT "Nota 1: " TO cN1
            nN1 := Val(cN1)
        ENDDO

        nN2 := -1
        WHILE nN2 < 0 .OR. nN2 > 10
            ACCEPT "Nota 2: " TO cN2
            nN2 := Val(cN2)
        ENDDO

        nMedia := (nN1 + nN2) / 2

        QOut("================================")
        QOut("Nome       : " + cNome)
        QOut("Disciplina : " + cDisc)
        QOut("Media      : " + Str(nMedia, 5, 2))
        QOut("================================")

        ACCEPT "Deseja calcular outro? (S/N): " TO cContinuar

        IF Upper(cContinuar) != "S"
            EXIT
        ENDIF

    ENDDO

RETURN NIL