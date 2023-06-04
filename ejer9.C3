/*
9. Convierta el siguiente fragmento JAVA a Código-3
do {
    read(Dato);
    if (Dato != 100)
        S = S + Dato;
    else
        S = S – Dato;
} while (Dato != 0 && Dato !=100)
print(S);
Use con total libertad las variables enteras Dato y S.
*/

// Consejo almacenar las constante primero

t1 = 100
t2 = 0
E1:
    read(Dato)
    t3 = (Dato != 100)
    if (t3 = 0) => goto E2
        S = S + Dato
        goto E3
    E2:
        S + S - Dato
        goto E3
    E3:
        t4 = (Dato != t2) // Dato != 0
        t5 = (Dato != t1) // Dato != 100
        t6 = (t4 and t5)
        if (t6 = 1) => goto E1 // Vuelve a interar
write(S)