CODE SEGMENT
ASSUME CS:CODE
START:
	  MOV AL,10000010B
	  MOV DX,0606H
	  OUT DX,AL      ;������
	  
NEXT: MOV DX,0602H
	  IN AL,DX       ;����in
	  
	  MOV DX,0600H
	  OUT DX,AL       ;����out
	  JMP NEXT                    
CODE ENDS
	END START