	ORG 0000H
	
	MOV A, #14D  
	MOV B, #07H  
	MOV R0,B     
	ANL A,R0     
	MOV @R0,A    
        MOV P0,#02H  
        MOV A,P0     
        CPL A        
        ORL A,@R0    
        MOV P2,#1FH  
        MOV R0,P2    
        ADD A,R0     
        SUBB A,#01D  
        MOV P0,A     
        ADD A,#01D   
        MOV B,#10o   
        MUL AB       
        MOV DPL,A    
        MOV P1,#20H  
        MOV R4,P1    
        MOV A,P3  
        CPL A        
        XRL A,R4    
        SUBB A,#07H  
        SUBB A,#101b  
        MOV P1,A      
        
        END 