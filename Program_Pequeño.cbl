      ******************************************************************
      * Author: Alpakita
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ProgramaRodas.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *> Variables para user
           01 Nombre PIC X(20) VALUE SPACES.
           01 Apellidos PIC X(32) VALUE SPACES.
           01 Edad PIC X(2) VALUE SPACES.

       PROCEDURE DIVISION.
       *> Solicita datos a la pipol
       SolicitarData.
           DISPLAY "Ingrese nombre papai:".
           ACCEPT Nombre.

           DISPLAY "Ingrese apellido papai:".
           ACCEPT Apellidos.

           DISPLAY "Ingrese edad papai:".
           ACCEPT Edad.

           *> Datos
           MostrarInfo.
               DISPLAY "Humilde, tu nombre es: " Nombre
               DISPLAY "Tu apellido: " Apellidos
               DISPLAY "Tu Edad: " Edad.

            STOP RUN.
       END PROGRAM ProgramaRodas.
