       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       AUTHOR. BLINK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME PIC X(20).
       01 WS-NUM PIC 9(5) VALUE 1.
       01 WS-I PIC 9(5).
       01 WS-MESSAGE PIC X(5) VALUE 'Hello'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      * Receiving name from JCL 
           DISPLAY 'How many people to greet?'
           ACCEPT WS-NUM.
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-NUM
               DISPLAY "Who's there now?"
               ACCEPT WS-NAME 
               DISPLAY WS-I': ' WS-MESSAGE ' ' WS-NAME
           END-PERFORM.

           DISPLAY 'Enjoy your day.'
           STOP RUN.
