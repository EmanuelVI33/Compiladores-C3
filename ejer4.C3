/*
4. (Esquema de traducción) Escriba un esquema de traducción 
C3 para la construcción ficticia:

until (ExprBoole){
    Sentencia;
} norZero (ID); 

// ID = una variable (por ejemplo: Z)
Esta construcción hace lo siguiente:
a) Consulta el valor de verdad de ExprBoole. Si es falsa 
continúa en (b); si es verdadera todo finaliza. 
b) Ejecuta la Sentencia.
c) Decrementa el valor del ID. Si ID es mayor que cero, 
continúa en (a); caso contrario todo finaliza
Recuerde que cada ExprBoole y Sentencia generan su propio C3
*/

E1:
    C3-ExprBoole(t1)
    if (t1 = 1) => goto Ef // Finaliza ciclo
    C3-Sentencia
    DEC ID
    t2 = (ID > 0)
    if (t2 = 1) => goto E1 
Ef: