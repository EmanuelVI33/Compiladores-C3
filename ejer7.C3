/*
7. (Código-3) Escriba un esquema de traducción para la 
construcción:

iftwice (ExprBoole){
 Sentencia1;
}
else {
 Sentencia2;
}

Si la ExprBoole es true, Sentencia1 se ejecutará dos veces
(twice); si es false, se ejecuta la Sentencia2 (una sola vez).
Tome en cuenta que ExprBoole, Sentencia1 y Sentencia2 generan su 
propio código-3.
*/

C3-ExprBoole(t1)
if (t1 = 0) => goto E1
    Sentencia1
    Sentencia1
    goto E2
E1:
    Sentencia2
E2   

// Otra forma con bucle
C3-ExprBoole(t1)
if (t1 = 0) => goto E1
t2 = 2
E2:
    t3 = t2 > 0
    if (t3 = 0) => goto Ef 
    Sentencia1
    DEC t2
    goto E2
E1:
    Sentencia2
Ef:

