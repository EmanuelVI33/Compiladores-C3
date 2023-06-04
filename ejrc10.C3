/*
10. Convierta el siguiente fragmento JAVA a Código-3

i=0;
c=10;
while (true){ //Loop-forever
    if (i % 2 != 0){
        System.out.print(“impar”);
        c--;
    }
    else{
        System.out.print(“par”);
    }
    if (c == 0){
        break; //Salir del while
    }
    i++;
} //End while
System.out.print(“Fin”); 

Use con total libertad las variables enteras i y c.
*/

t1 = 1
t2 = 2
i = 0
c = 10
E1: 
    if (t1 = 0) => goto Ef
    t4 = (i mod t2)
    if (t4 = 0) => goto E2
        writeS("Impar")
        DEC c
        goto E3
    E2:
        writeS("Par")
    E3:
    if (c = 0) => goto Ef
    INC i
    goto E1
Ef:
writeS("fin")