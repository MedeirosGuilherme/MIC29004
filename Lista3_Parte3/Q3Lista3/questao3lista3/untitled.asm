;-----------------------------DEFINIÇAÕ DE HARDWARE

	LED_0 EQU P0.0
	LED_1 EQU P0.1
	LED_2 EQU P0.2
	LED_3 EQU P0.3
	LED_4 EQU P0.4
	LED_5 EQU P0.5
	LED_6 EQU P0.6
	LED_7 EQU P0.7




	ORG 0000H


	MOV P2,#11111111B  
	MOV P0,#00000000B 
	
	JMP INICIO

INICIO: 
	JB P2.0, PRESS1 
	SETB B.0 ;
	SJMP TEST1

PRESS1:
	JB P2.1, PRESS2
	SETB B.1
	SJMP TEST2

PRESS2:
	JB P2.2, INICIO
	SETB B.2
	SJMP TEST3

TEST1:
	JNB P2.0, $ 
	CLR B.0 
	INC A       
	INC R2
	MOV P0, A   
	SJMP INICIO

TEST2:
	JNB P2.1, $
	CLR B.1
	INC A     
	INC R3
	MOV P0, A   
	SJMP INICIO

TEST3:
	JNB P2.2, $ 
	CLR B.2
	INC A       
	INC R3
	MOV P0, A   
	SJMP INICIO
	END