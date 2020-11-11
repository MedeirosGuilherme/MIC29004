	ORG 0000H	


	MOV A,#00D
LOOP:	
        MOV 30H,#255D    
	INC A            
	MOV P3,A         
	CJNE A,30H,LOOP  
                         
	END