;--------------------------------------QUESTÃO 1.
;Considerando a sub-rotina apresentada na última aula
;(ao   lado),   construa   um   código   que   permita   realizar   um
;pisca-pisca com o barramento de LED's implementado


;---------------Definição de Hardware

	LED EQU P0



;--------------------------------------------atraso
ATRASO:


	SETB TR0
	JNB TF0, $ ; CONTA ATÉ 65ms
	CLR TR0
	CLR TF0
	JMP LOOP1
LOOP1: ; FAZ 16 VEZES
INC A 
CJNE  A,  #16D ,  ATRASO       ;ENQUANTO TAL REGISTRADOR NAO FOR,  NUMERO DE VEZES , ATRASO 
	RET
	 
	

; INICIO DO PROGRAMA


	ORG 0000H
CLR A
LOOP:
	MOV TMOD, #00000001B

	MOV P0, #11111111B
	CALL ATRASO 

	MOV P0, #00000000B
	CALL ATRASO 

	JMP LOOP


END



