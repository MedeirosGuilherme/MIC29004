	ORG 0000H

        MOV R7,#00D
        MOV R6,#00D
        MOV P0,#00D
        MOV P2,#00D
	
LOOP:	
	CJNE R6,#99,B
        SJMP A
	
A: 
		MOV R6,#00D
        	MOV P0,#00D
        	INC R7
         	MOV P2,R7
         	SJMP LOOP
         
B:
        	INC R6
        	MOV P0,R6
        	SJMP LOOP
         END
         