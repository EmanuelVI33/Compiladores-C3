/*
5. (Esquema de traducción) Escriba un esquema de traducción 
C3 para la construcción ficticia:

whileCase (Expr != Expr3){
    case Expr1 : Sentencia1;
    case Expr2 : Sentencia2;
} 

Esta construcción hace lo siguiente:
a) Verifica que Expr == Expr3. Si son iguales, todo termina; 
caso contrario, continúa en (b)
b) Verifica que Expr == Expr1. Si son iguales, ejecuta la 
Sentencia1 y luego continúa en (a); caso contrario, 
continúa en (c).
c) Verifica que Expr == Expr2. Si son iguales, ejecuta la 
Sentencia2 y luego continúa en (a); caso contrario, 
continúa en (a).
Recuerde que Expr, Expr1, Expr2, Expr3, Sentencia1 y Sentencia2 generan 
su propio C3.
*/

E1:
    C3-Expr(t1)
    C3-Expr3(t2)
    t3 = (t1 = t2)
    if (t3 = 1) => goto Ef  // Finaliza bucle
        C3-Expr1(t4)
        t5 = (t1 = t4)
        if (t5 = 0) => goto E2  
            C3-Sentencia1
            goto E1        // Otra iteracion
    E2:
        C3-Expr2(t6)
        t7 = (t1 = t6)
        if (t7 = 0) => goto E3
        C3-Sentencia2
    E3:
        goto E1
Ef: 
