;Construa um cÃ³digo assembly que permita apresentar o nÃ­vel de carga de
;uma bateria partindo do LED_0 atÃ© LED_7 conforme apresentado na
;Figura ao lado.



;-------- Definição de Hardware

	LED EQU P0


;--------------------------------------------atraso (1SEG)
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

;----------------------------------------- PROGRAMA


	ORG 0000H

LOOP:
	MOV TMOD, #00000010B


	MOV P0, #00000001B  ;LED 0
	CALL ATRASO 

	MOV P0, #00000010B ;LED 1
	CALL ATRASO 

	MOV P0, #00000100B;LED 2
	CALL ATRASO 

	MOV P0, #00001000B;LED 3
	CALL ATRASO 

	MOV P0, #00010000B;LED 4
	CALL ATRASO 

	MOV P0, #00100000B;LED 5
	CALL ATRASO 



	MOV P0, #01000000B;LED 6
	CALL ATRASO 





	MOV P0, #10000000B;LED 7
	CALL ATRASO  


	JMP LOOP


END









	
	
	
	
	