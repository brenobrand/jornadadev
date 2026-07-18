#define PI 3.14159

FUNCTION Main()

    LOCAL nRaio, nArea
    LOCAL nCatetoA, nCatetoB, nHipotenusa
    LOCAL nPeso, nAltura, nIMC

    // a. Área do círculo
    ACCEPT "Informe o raio: " TO nRaio
    nRaio := Val(nRaio)
    nArea := PI * nRaio ^ 2
    QOut("Area do circulo: " + Str(nArea, 10, 2))

    // b. Hipotenusa
    ACCEPT "Informe o cateto A: " TO nCatetoA
    ACCEPT "Informe o cateto B: " TO nCatetoB
    nCatetoA := Val(nCatetoA)
    nCatetoB := Val(nCatetoB)
    nHipotenusa := Sqrt(nCatetoA ^ 2 + nCatetoB ^ 2)
    QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))

    // c. IMC
    ACCEPT "Informe o peso (kg): " TO nPeso
    ACCEPT "Informe a altura (m): " TO nAltura
    nPeso := Val(nPeso)
    nAltura := Val(nAltura)
    nIMC := nPeso / (nAltura ^ 2)
    QOut("IMC: " + Str(nIMC, 10, 2))

RETURN NIL