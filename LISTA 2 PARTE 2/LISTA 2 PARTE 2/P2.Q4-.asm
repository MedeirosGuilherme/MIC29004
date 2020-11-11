	;QUESTAO 4 LISTA 2


ORG 0000H
	


MOV A,#02H
	INC A
	MOV R0, A 
	MOV A,#10D
	ORL A,R0
	MOV B,A
	; conferir depois

	MOV A,B
	CPL A
	INC A
	MOV B,A
	


END
	
