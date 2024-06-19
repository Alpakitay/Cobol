      ******************************************************************
      * Author: Alpakita
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Condicionales.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
           01 Operacion PIC X(20) VALUE SPACES.

           01 Num1-Alpha PIC X(10) VALUE SPACES.
           01 Num2-Alpha PIC X(10) VALUE SPACES.

           01 Num1 PIC 9(10) VALUE 0.
           01 Num2 PIC 9(10) VALUE 0.

           01 Resultado PIC 9(10)V9(2) VALUE 0.00.

       PROCEDURE DIVISION.

       Condicion.
           DISPLAY "Que operacion haras? ;)".
           DISPLAY "Suma".
           DISPLAY "Resta".
           DISPLAY "Multiplicacion".
           DISPLAY "Division".
           ACCEPT Operacion.

           DISPLAY "Numero 1 es: ".
           ACCEPT Num1-Alpha.

           DISPLAY "Numero 2 es: ".
           ACCEPT Num2-Alpha.

           *> Convertir alfanumerico a numerico.
           MOVE FUNCTION NUMVAL(Num1-Alpha) TO Num1.
           MOVE FUNCTION NUMVAL(Num2-Alpha) TO Num2.

           *> Suma.
           IF FUNCTION TRIM(Operacion) = "Suma" THEN
               COMPUTE Resultado = Num1 + Num2
               DISPLAY "La suma es: " Resultado
           END-IF.

           *> Resta.
           IF FUNCTION TRIM(Operacion) = "Resta" THEN
               COMPUTE Resultado = Num1 - Num2
               DISPLAY "La resta es: " Resultado
           END-IF.

           *> Multiplicacion.
           IF FUNCTION TRIM(Operacion) = "Multiplicacion" THEN
               COMPUTE Resultado = Num1 * Num2
               DISPLAY "La multiplicacion es: " Resultado
           END-IF.

           *> Division.
           IF FUNCTION TRIM(Operacion) = "Division" THEN
               IF Num2 NOT = 0 THEN
                   COMPUTE Resultado = Num1 / Num2
                   DISPLAY "La division es: " Resultado
               ELSE
                   DISPLAY "Error: Division por cero no es permitida."
               END-IF
           END-IF.

           STOP RUN.

       END PROGRAM Condicionales.
