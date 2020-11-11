	ORG 0000H


	MOV A,#1FH
	ANL A,#55H  
	ADD A,#06H  
	MOV B,A     


	MOV A,#1FH
	CPL A        
	MOV R0,A     
	XRL A,R0     
	MOV R1,A     
	MOV A,#201D  
	MOV @20H,A   
	MOV A,R1   
	ANL A,20H    
	MOV P0,A     


	MOV A,#121D   
	MOV @10H,A   

	MOV A,B
	CPL A        
	MOV B,A      
	ORL 10H,A    
	MOV A,20H    
	CPL A        
	MOV R3,A     
	MOV A,10H    
	SUBB A,R3     
	MOV P1,A
	;QUARTA LINHA
	MOV 30H,#88D
	MOV B, #01H    
	MOV A,B
	CPL A
	XRL A,30H     
	MOV R4,A      
	MOV A,P0      
	CPL A
	MOV P0,A      
	MOV A,R4
	SUBB A,P0     
	MOV P3,#02H   
	MOV B,P3
	MUL AB        


	MOV R5,A      
	MOV B,#20D
	MOV A,#10D
	MUL AB        
	MOV R6,A      
	MOV A,R5
	SUBB A,R6     
	MOV @DPL,A
	
	END
	
	
	
	