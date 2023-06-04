/*
3. (Esquema de traducción) Escriba un esquema de traducción 
para la siguiente construcción ficticia:

DO 
 Sentencia;
UNTIL ExprBoole1 TOGGLE ExprBoole2; 

Esta construcción ejecuta la Sentencia en un ciclo. Para salir 
de este ciclo, al llegar al UNTIL : 
La primera vez consulta por la ExprBoole1, si es true se sale del 
ciclo; la segunda vez consulta por la ExprBoole2, si es false se 
sale del ciclo; la tercera vez consulta por la ExprBoole1, si es 
true se sale del ciclo; la cuarta vez consulta por la ExprBoole2, 
si es false sale del ciclo; …
Note que en cada ciclo se consulta por la ExprBoole1 (true para salir) y 
en el siguiente ciclo por la ExprBoole2 (false para salir), pero jamás se 
consulta por ambas simultáneamente.
Recuerde que Sentencia, ExprBoole1 y ExprBoole2 generan su propio C3
*/

t1 = 0   // Bandera
E1:   
    t1 = not t1  // Cambio bandera
    C3-Sentencia
    if (t1 = 0) => goto E2 
        C3-ExprBoole1(t2)
        if (t2 = 1) => goto Ef  // Finaliza bucle
        goto E1 
    E2:
        C3-ExprBoole2(t3)
        if (t3 = 0) => goto Ef // Finaliza bucle
        goto E1 
Ef:

