      ******************************************************************
      * Author: Alpakita
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Suma.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 Variable1 PIC 9(5) VALUE 10.
           01 Variable2 PIC 99 VALUE 20.
           01 Variable3 PIC 99 VALUE 10.
           01 Resultado PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       CalculaYMuestraResultado.
           COMPUTE Resultado = Variable1 + Variable2 - Variable3.
           DISPLAY "Sumita Angelito: " Resultado " para todos gaa".
       STOP RUN.

       END PROGRAM Suma.
