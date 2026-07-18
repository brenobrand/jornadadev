FUNCTION Main()

    LOCAL cNome, cDataNasc, cPreco
    LOCAL dNasc, nPreco, nIdade, nDesconto, nTotal

    ACCEPT "Nome: " TO cNome
    ACCEPT "Data de nascimento (DD/MM/AAAA): " TO cDataNasc
    ACCEPT "Preco do produto: " TO cPreco

    dNasc := CToD(cDataNasc)
    nPreco := Val(cPreco)
    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("================================")
    QOut("Cliente  : " + cNome)
    QOut("Idade    : " + Str(nIdade, 3))
    QOut("Preco    : " + Str(nPreco, 10, 2))
    QOut("Desconto : " + Str(nDesconto, 10, 2))
    QOut("Total    : " + Str(nTotal, 10, 2))
    QOut("================================")

RETURN NIL