/*
8. Convierta el siguiente fragmento JAVA a Código-3
while (true){
    read(Dato);
    if (Dato==0)
        break;
    if (Dato%2==0)
        S = S + Dato;
    else
        S = S – Dato;
}
print(S);
*/

t1 = 2
t2 = 0
t3 = 1 // true
E1:
    if (t3 = 0) => goto Ef // while(true), t3 es siempre true
        read(Dato)
        t4 = (Dato = t2)
        if (t4 = 1) => goto Ef
        t5 = Dato mod t1 // Es par  4 mod 2 = 0, 3 mod 2 = 1
        if (t5 = 0) => goto E2
            s = s + Dato
            goto E1
    E2: // Es impar
        s = s - Dato
        goto E1
Ef:
print(s)