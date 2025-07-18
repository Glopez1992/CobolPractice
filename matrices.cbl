       IDENTIFICATION DIVISION.
       PROGRAM-ID. MATRICES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 N        PIC 99 VALUE 0.
       77 M        PIC 99 VALUE 0.
       77 I        PIC 99 VALUE 0.
       77 J        PIC 99 VALUE 0.
       77 NUM      PIC 999.

       01 MATRIX-1.
          05 ROW-1 OCCURS 10 TIMES.
             10 COL-1 OCCURS 10 TIMES.
                15 ELEM-1 PIC 999 VALUE 0.

       01 MATRIX-2.
          05 ROW-2 OCCURS 10 TIMES.
             10 COL-2 OCCURS 10 TIMES.
                15 ELEM-2 PIC 999 VALUE 0.

       01 MATRIX-3.
          05 ROW-3 OCCURS 10 TIMES.
             10 COL-3 OCCURS 10 TIMES.
                15 ELEM-3 PIC 999 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-SECTION.

           DISPLAY "Ingrese cantidad de filas (max 10):"
           ACCEPT N.
           DISPLAY "Ingrese cantidad de columnas (max 10):"
           ACCEPT M.

           DISPLAY "Ingrese los elementos de la primera matriz:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > M
                   DISPLAY "Elemento [" I "," J "] de M1:"
                   ACCEPT NUM
                   MOVE NUM TO ELEM-1(I, J)
               END-PERFORM
           END-PERFORM.

           DISPLAY "Ingrese los elementos de la segunda matriz:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > M
                   DISPLAY "Elemento [" I "," J "] de M2:"
                   ACCEPT NUM
                   MOVE NUM TO ELEM-2(I, J)
               END-PERFORM
           END-PERFORM.

           DISPLAY "Resultado de la suma de matrices:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > M
                   COMPUTE ELEM-3(I, J) = ELEM-1(I, J) + ELEM-2(I, J)
                   DISPLAY "M3[" I "," J "] = " ELEM-3(I, J)
               END-PERFORM
           END-PERFORM.

           STOP RUN.



