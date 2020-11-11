; QUESTÃO 3 LISTA 2

	ORG 0000H
	MOV A,#56D
	PUSH A
	POP A
	





LOOP:   SETB P0.3  
        SETB P0.0  
        MOV B,P2
        CJNE A,B,Vai
        SJMP LOOP3
Vai: CLR P0.3
           SJMP Vasco
vasco: CLR P0.0
       SJMP LOOP
       



END
