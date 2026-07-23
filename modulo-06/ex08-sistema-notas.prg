FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL nN, nI, cNome, cN1, cN2, cN3, cN4, nMedia

    ACCEPT "Quantos alunos? " TO nN
    nN := Val(nN)

    FOR nI := 1 TO nN
        ACCEPT "Nome do aluno " + Str(nI) + ": " TO cNome
        ACCEPT "Nota 1: " TO cN1
        ACCEPT "Nota 2: " TO cN2
        ACCEPT "Nota 3: " TO cN3
        ACCEPT "Nota 4: " TO cN4

        AADD(aAlunos, {cNome, Val(cN1), Val(cN2), Val(cN3), Val(cN4)})
    NEXT

    QOut("=== Aprovados ===")
    FOR nI := 1 TO Len(aAlunos)
        nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
        IF nMedia >= 7
            QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia, 5, 2))
        ENDIF
    NEXT

    QOut("=== Reprovados ===")
    FOR nI := 1 TO Len(aAlunos)
        nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
        IF nMedia < 7
            QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia, 5, 2))
        ENDIF
    NEXT

RETURN NIL