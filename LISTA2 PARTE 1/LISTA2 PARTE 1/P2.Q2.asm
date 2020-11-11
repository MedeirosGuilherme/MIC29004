; QUESTAO 2	

ORG 0000H
	MOV A,#56D
	PUSH A
	POP A
	
LOOP1:   MOV B,P2
        CJNE A,B,LOOP1
        SJMP $
        END

	
