
CODE SEGMENT
    ASSUME CS:CODE
    main proc far 
        
	mov al,12h		;�趨��ʾģʽ��640*480��ɫͼ�η�ʽ��
	int 10h			;�����ж�ָ��
	
	
	mov cx,0		;�󳵵��ָ���
	mov dx,200
	mov si,100
	call hline1
	
	mov cx,300		;�ҳ����ָ���
	mov dx,200
	mov si,400
	call hline1
	
	MOV CX,200		;�ϳ����ָ���
	MOV DX,0
	MOV SI,100
	CALL VLINE1

	MOV CX,200		;�³����ָ���
	MOV DX,300
	MOV SI,400
	CALL VLINE1
	
	
	mov cx,0		;����ˮƽ��·��Ե
	mov dx,100
	mov si,100
	call hline
	
	mov cx,300		;����ˮƽ��·��Ե
	mov dx,300
	mov si,400
	call hline
	   
	mov cx,300		;����ˮƽ��·��Ե
	mov dx,100
	mov si,400
	call hline
	
	mov cx,0		;����ˮƽ��·��Ե
	mov dx,300
	mov si,100
	CALL HLINE
	
	MOV CX,300		;���ϴ�ֱ��·��Ե
	MOV DX,0
	MOV SI,100
	CALL VLINE
	
	MOV CX,100		;���´�ֱ��·��Ե
	MOV DX,300
	MOV SI,400
	CALL VLINE
	
	MOV CX,100		;���ϴ�ֱ��·��Ե
	MOV DX,0
	MOV SI,100
	CALL VLINE
	
	MOV CX,300		;���´�ֱ��·��Ե
	MOV DX,300
	MOV SI,400
	CALL VLINE
					;�����󳵵�������
	MOV CX,30		;��CX�洢���������Ͻǵĺ����꣬DX�洢�������Ͻǵ�������
	MOV DX,120		
	MOV SI,40		;��SI�洢���������½ǵĺ����꣬DI�洢�������½ǵ�������
	MOV DI,130		
	CALL PAINT		;����PAINT�ӳ��򣬻���һ������ΪSI-CX,���ΪDI-DX��С������	
	
	MOV CX,80
	MOV DX,150
	MOV SI,90
	MOV DI,160
	CALL PAINT
	
	MOV CX,50
	MOV DX,180
	MOV SI,60
	MOV DI,190
	CALL PAINT
	
	MOV CX,70		;�����ҳ���������
	MOV DX,210
	MOV SI,80
	MOV DI,220
	CALL PAINT
	
	MOV CX,0
	MOV DX,230
	MOV SI,10
	MOV DI,240
	CALL PAINT
	
	MOV CX,30
	MOV DX,260
	MOV SI,50
	MOV DI,270
	CALL PAINT
	
	MOV CX,310		;�����ҳ���������
	MOV DX,120
	MOV SI,320
	MOV DI,130
	CALL PAINT
	
	MOV CX,340
	MOV DX,150
	MOV SI,360
	MOV DI,160
	CALL PAINT
	
	MOV CX,350
	MOV DX,180
	MOV SI,370
	MOV DI,190
	CALL PAINT
	
	MOV CX,320		;�����󳵵�������
	MOV DX,210
	MOV SI,330
	MOV DI,220
	CALL PAINT
	
	MOV CX,350
	MOV DX,240
	MOV SI,360
	MOV DI,250
	CALL PAINT
	
	MOV CX,370
	MOV DX,280
	MOV SI,380
	MOV DI,290
	CALL PAINT
	
	MOV CX,120		;�����ҳ���������
	MOV DX,20
	MOV SI,130
	MOV DI,40
	CALL PAINT1
	
	MOV CX,150
	MOV DX,50
	MOV SI,160
	MOV DI,70
	CALL PAINT1
	
	MOV CX,180
	MOV DX,80
	MOV SI,190
	MOV DI,100
	CALL PAINT1
	
	MOV CX,210		;�����󳵵�������
	MOV DX,50
	MOV SI,220
	MOV DI,70
	CALL PAINT1
	
	MOV CX,240
	MOV DX,10
	MOV SI,250
	MOV DI,30
	CALL PAINT1
	
	MOV CX,270
	MOV DX,70
	MOV SI,280
	MOV DI,80
	CALL PAINT1
	
	MOV CX,110		;�ϱ��󳵵�
	MOV DX,320
	MOV SI,120
	MOV DI,340
	CALL PAINT1
	
	MOV CX,140
	MOV DX,380
	MOV SI,150
	MOV DI,400
	CALL PAINT1
	
	MOV CX,180
	MOV DX,350
	MOV SI,190
	MOV DI,370
	CALL PAINT1
	
	MOV CX,180
	MOV DX,305
	MOV SI,190
	MOV DI,315
	CALL PAINT1
	
	MOV CX,210		;�ϱ��ҳ���������
	MOV DX,340
	MOV SI,220
	MOV DI,360
	CALL PAINT1
	
	MOV CX,280
	MOV DX,320
	MOV SI,290
	MOV DI,340
	CALL PAINT1
	
	MOV CX,250
	MOV DX,370
	MOV SI,260
	MOV DI,380
	CALL PAINT1
	
	

DENG:				;��ʼ���źŵ�״̬��ˮƽ�����ʼ��Ϊ��ƣ���ֱ�����ʼ��Ϊ�̵�
	MOV CX,280		;��CX�洢��ͨ�Ƶ����Ͻǵĺ����꣬DX�洢��ͨ�����Ͻǵ�������
	MOV DX,100		
	MOV AL,04H		;���ý�ͨ�Ƶ���ɫ����ɫ��
	MOV SI,300		;��SI�洢���������½ǵĺ����꣬DI�洢�������½ǵ�������
	MOV DI,120
	CALL PAINT		;����PAINT�ӳ��򣬻���һ������ΪSI-CX,���ΪDI-DX��С�Ľ�ͨ��	

	MOV CX,100
    MOV DX,280
    MOV SI,120
    MOV DI,300
    CALL PAINT
    
    MOV CX,100		
    MOV DX,100
    MOV AL,02H		;���ý�ͨ�Ƶ���ɫ����ɫ��
    MOV SI, 120
    MOV DI ,120
    CALL PAINT
    
    MOV CX,280
    MOV DX,280
    MOV SI,300
    MOV DI,300
    CALL PAINT
    
    MOV SI,0AH
    MOV AL,'9'  ;��ʱ10��
    CALL NUM
    				;�˴���ͨ�ƿ�ʼ����
    	
    
    
   
    
    MOV AL,0EH		;����ֱ����������źŵƵ���ɫ����Ϳ�ɻ�ɫ����->�ƣ�
    MOV CX,100
    MOV DX,100
    MOV SI,120
    MOV DI,120
    CALL PAINT
    
    MOV CX,280
    MOV DX,280
    MOV SI,300
    MOV DI,300
    CALL PAINT
    
    MOV SI,03H
    MOV AL,'3'	;��ʱ3��
    CALL NUM 
    
   
    
    
    MOV CX,100		;����ֱ����������źŵƵĻ�ɫ����Ϳ�ɺ�ɫ����->�죩
    MOV DX,100
    MOV AL,04H
    MOV SI, 120
    MOV DI ,120
    CALL PAINT
    
    MOV CX,280
    MOV DX,280
    MOV SI,300
	MOV DI,300
    CALL PAINT
    
    MOV CX,280
    MOV DX,100
    MOV AL,02H		;��ˮƽ����������źŵƵĺ�ɫ����Ϳ����ɫ����->�̣�
    MOV SI,300
    MOV DI,120
    CALL PAINT
    
    MOV CX,100
    MOV DX,280
    MOV SI,120
    MOV DI,300  
    CALL PAINT
    MOV SI,09H
    MOV AL,'9';��ʱ10��
    CALL NUM 
    		
    
    
    MOV AL,0EH		;��ˮƽ����������źŵƵ���ɫ����Ϳ�ɻ�ɫ����->�ƣ�
    MOV CX,280
    MOV DX,100
    MOV SI,300
    MOV DI,120
    CALL PAINT
    
    MOV CX,100
    MOV DX,280
    MOV SI,120
    MOV DI,300
    CALL PAINT
        
    JMP DENG		;�ظ�ִ��DENG��ʹ��ͨ������ɫ���������仯
    
    MOV AH,1		
    INT 21H
    
EXIT:
	MOV AX,4C00H
	INT 21H
MAIN ENDP

HLINE PROC NEAR		;����ˮƽ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��si,dx��
HLOP:
	MOV AH,0CH		;ͼ�η�ʽ����ָ�������괦д�㣨DX=���ص����ֵ��CX=���ص����ֵ��AL=Ҫд�����ص��ֵ��
	MOV AL,0FH
	MOV BH,0
	INT 10H
	INC	CX
	CMP	CX,SI
	JNZ	HLOP
	RET
HLINE	ENDP

VLINE PROC NEAR		;���ƴ�ֱ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��cx,si��
VLOP:
	MOV	AH,0CH
	MOV	AL,0FH
	MOV	BH,0
	INT	10H
	INC	DX
	CMP	DX,SI
	JNZ	VLOP
	RET
VLINE	ENDP

PAINT PROC NEAR	    ;��ָ������Ϳɫ��alָ����ɫ����cx,dx��Ϊ��ʼ�����꣬��si,di��Ϊ��ֹ������	
PLOP:
	MOV	AH,0CH
	MOV	BH,0
	INT	10H
	INC	CX
	CMP	CX,SI
	JNZ	PLOP
	SUB	CX,20
	INC	DX
	CMP	DX,DI
	JNZ	PLOP
	RET
PAINT ENDP

HLINE1 PROC NEAR		;���ڻ���ˮƽ�ָ��ߵ��ӳ���
HLOP1:
	MOV AH,0CH
	MOV AL,0FH
	MOV BH,0
	INT 10H
	ADD CX,5
	CMP	CX,SI
	JNZ	HLOP1
	RET
HLINE1 ENDP

VLINE1 PROC NEAR		;���ڻ��ƴ�ֱ�ָ��ߵ��ӳ���
VLOP1:
	MOV	AH,0CH
	MOV	AL,0FH
	MOV	BH,0
	INT	10H
	ADD DX,5
	CMP	DX,SI
	JNZ	VLOP1
	RET
VLINE1	ENDP

PAINT1	PROC NEAR		;���ڻ���С�����ӳ���
PLOP:
	MOV	AH,0CH
	MOV	BH,0
	INT	10H
	INC	CX
	CMP	CX,SI
	JNZ	PLOP
	SUB	CX,10
	INC	DX
	CMP	DX,DI
	JNZ	PLOP
	RET
	PAINT1	ENDP
	
HLINER PROC NEAR		;����ˮƽ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��si,dx��
HLOP:
	MOV AH,0CH		;ͼ�η�ʽ����ָ�������괦д�㣨DX=���ص����ֵ��CX=���ص����ֵ��AL=Ҫд�����ص��ֵ��
	MOV AL,0FH
	mov al,04h
	MOV BH,0
	INT 10H
	INC	CX
	CMP	CX,SI
	MOV AL,04H
	JNZ	HLOP
	RET
HLINER	ENDP	
VLINER PROC NEAR		;���ƴ�ֱ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��cx,si��
VLOP:
	MOV	AH,0CH
	MOV	AL,0FH
	MOV AL,04H
	MOV	BH,0
	INT	10H
	INC	DX
	CMP	DX,SI
	JNZ	VLOP
	RET
VLINER	ENDP	
	
HLINEB PROC NEAR		;����ˮƽ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��si,dx��
HLOP:
	MOV AH,0CH		;ͼ�η�ʽ����ָ�������괦д�㣨DX=���ص����ֵ��CX=���ص����ֵ��AL=Ҫд�����ص��ֵ��
	MOV AL,0FH
	mov al,00h
	MOV BH,0
	INT 10H
	INC	CX
	CMP	CX,SI
	MOV AL,04H
	JNZ	HLOP
	RET
HLINEB	ENDP	
VLINEB PROC NEAR		;���ƴ�ֱ�ߣ���ʼ�������Ϊ��cx,dx��,�����������Ϊ��cx,si��
VLOP:
	MOV	AH,0CH
	MOV	AL,0FH
	MOV AL,00H
	MOV	BH,0
	INT	10H
	INC	DX
	CMP	DX,SI
	JNZ	VLOP
	RET
VLINEB	ENDP	


DELAY1  PROC      NEAR
              PUSH      AX
              PUSH      CX
              PUSH      DX
              PUSH      SI
              PUSH      DI
              PUSHF
              MOV       AH,0
              INT       1AH
              MOV       SI,CX
              MOV       DI,DX
@DELAY:
              MOV       AH,0
              INT       1AH
              SUB       DX,DI
              SBB       CX,SI
              CMP       DX,18
              JB        @DELAY
              POPF
              POP       DI
              POP       SI
              POP       DX
              POP       CX
              POP       AX
              RET
      DELAY1  ENDP
NUM PROC
	
	
NEXT:
   	MOV AH,2
	MOV DX,050BH
	INT 10H
	
    MOV DL,AL
    MOV AH,02H
    INT 21H
    CALL DELAY1
    DEC AL
    DEC SI
    JNZ NEXT
 
    RET
NUM ENDP

CODE	ENDS
	END MAIN

