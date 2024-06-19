      ******************************************************************
      * Author: Alpakita
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       *> Operaciones
           *> Multiplicar
           01 Mult1 PIC 99 VALUE 5.
           01 Mult2 PIC 99 VALUE 4.

       *> Sumas Resultados
           01 Resultado PIC 99 VALUE ZERO.


       PROCEDURE DIVISION.
           CalcularMulti.
               COMPUTE Resultado = Mult1 * Mult2.
               DISPLAY "Profe, ponga " Resultado " pa' todos p'."

           STOP RUN.
       END PROGRAM OPERACIONES.
