

;-------- Definição de Hardware

	LED EQU P0

;LED0 ----- P0.0
;LED1 ----- P0.1
;LED2 ----- P0.2
;LED3 ----- P0.3
;LED4 ----- P0.4
;LED5 ----- P0.5
;LED6 ----- P0.6
;LED7 ----- P0.7

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

;----------------------------------------- PROGRAMA


	ORG 0000H

LOOP:
	MOV TMOD, #00000010B

	MOV P0, #10101010B
	CALL ATRASO 

	MOV P0, #01010101B
	CALL ATRASO 


	JMP LOOP


END









	
	
	
	
	