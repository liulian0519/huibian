CODE SEGMENT
ASSUME CS:CODE
START:
	  MOV AL,10000010B
	  MOV DX,0606H
	  OUT DX,AL      ;¿ØÖÆ×Ö
	  
NEXT: MOV DX,0602H
	  IN AL,DX       ;¿ª¹Øin
	  
	  MOV DX,0600H
	  OUT DX,AL       ;µÆÅÝout
	  JMP NEXT                    
CODE ENDS
	END START