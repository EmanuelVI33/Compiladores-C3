/*
6. (Esquema de traducción) Escriba un esquema de traducción 
C3 para la construcción ficticia:

forX ID=NUM1 to NUM2 STEP NUM3{
 par
Sentencia1;
 impar
 Sentencia2
}until (ExprBoole); 

// NUM1 y NUM2 = 2 números enteros (por ejemplo: 3 y 8)
// ID = una variable (por ejemplo: Z)
Esta construcción empieza asignando ID = NUM1. Luego entra 
a un ciclo, el cual hace lo siguiente:
a) Si el ID es par ejecuta la Sentencia1; caso contrario, 
ejecuta la Sentencia2.
b) Hace ID = ID + NUM3
c) Si ID > NUM2 O la ExprBoole es true, todo finaliza. 
Caso contrario, continúa en (a).
Rcuerde que ExprBoole, Sentencia1 y Sentencia2, generan su propio C3.

*/

t1 = NUM1  // Son números enteros, debemos almacenar en una var temp
t2 = NUM2
t3 = NUM3
t4 = 2
ID = t1
E1:
    t5 = ID mod t4
    if (t6 = 1) => goto E2
        C3-Sentencia1  // Es par
        goto E3
    E2: // Es impar
        C3-Sentencia2
    E3:
    ID = ID + t3  // ID = ID + NUM3
    t6 = (ID > t2)  // ID > 2
    C3-ExprBoole(t7)
    t8 = t6 or t7
    if (t8 = 0) => goto E1 // Vuelve a iterar

