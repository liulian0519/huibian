
CODE SEGMENT
    ASSUME CS:CODE
    main proc far 
        
	mov al,12h		;设定显示模式（640*480彩色图形方式）
	int 10h			;发出中断指令
	
	
	mov cx,0		;左车道分隔线
	mov dx,200
	mov si,100
	call hline1
	
	mov cx,300		;右车道分隔线
	mov dx,200
	mov si,400
	call hline1
	
	MOV CX,200		;上车道分隔线
	MOV DX,0
	MOV SI,100
	CALL VLINE1

	MOV CX,200		;下车道分隔线
	MOV DX,300
	MOV SI,400
	CALL VLINE1
	
	
	mov cx,0		;左上水平马路边缘
	mov dx,100
	mov si,100
	call hline
	
	mov cx,300		;右下水平马路边缘
	mov dx,300
	mov si,400
	call hline
	   
	mov cx,300		;右上水平马路边缘
	mov dx,100
	mov si,400
	call hline
	
	mov cx,0		;左下水平马路边缘
	mov dx,300
	mov si,100
	CALL HLINE
	
	MOV CX,300		;右上垂直马路边缘
	MOV DX,0
	MOV SI,100
	CALL VLINE
	
	MOV CX,100		;左下垂直马路边缘
	MOV DX,300
	MOV SI,400
	CALL VLINE
	
	MOV CX,100		;左上垂直马路边缘
	MOV DX,0
	MOV SI,100
	CALL VLINE
	
	MOV CX,300		;右下垂直马路边缘
	MOV DX,300
	MOV SI,400
	CALL VLINE
					;西边左车道的汽车
	MOV CX,30		;用CX存储汽车的左上角的横坐标，DX存储汽车左上角的纵坐标
	MOV DX,120		
	MOV SI,40		;用SI存储汽车的右下角的横坐标，DI存储汽车右下角的纵坐标
	MOV DI,130		
	CALL PAINT		;调用PAINT子程序，画出一个长度为SI-CX,宽度为DI-DX大小的汽车	
	
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
	
	MOV CX,70		;西边右车道的汽车
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
	
	MOV CX,310		;东边右车道的汽车
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
	
	MOV CX,320		;东边左车道的汽车
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
	
	MOV CX,120		;北边右车道的汽车
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
	
	MOV CX,210		;北边左车道的汽车
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
	
	MOV CX,110		;南边左车道
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
	
	MOV CX,210		;南边右车道的汽车
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
	
	

DENG:				;初始化信号灯状态，水平方向初始化为红灯，竖直方向初始化为绿灯
	MOV CX,280		;用CX存储交通灯的左上角的横坐标，DX存储交通灯左上角的纵坐标
	MOV DX,100		
	MOV AL,04H		;设置交通灯的颜色（红色）
	MOV SI,300		;用SI存储汽车的右下角的横坐标，DI存储汽车右下角的纵坐标
	MOV DI,120
	CALL PAINT		;调用PAINT子程序，画出一个长度为SI-CX,宽度为DI-DX大小的交通灯	

	MOV CX,100
    MOV DX,280
    MOV SI,120
    MOV DI,300
    CALL PAINT
    
    MOV CX,100		
    MOV DX,100
    MOV AL,02H		;设置交通灯的颜色（绿色）
    MOV SI, 120
    MOV DI ,120
    CALL PAINT
    
    MOV CX,280
    MOV DX,280
    MOV SI,300
    MOV DI,300
    CALL PAINT
    
    MOV SI,0AH
    MOV AL,'9'  ;延时10秒
    CALL NUM
    				;此处交通灯开始工作
    	
    
    
   
    
    MOV AL,0EH		;将竖直方向的两个信号灯的绿色区域涂成黄色（绿->黄）
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
    MOV AL,'3'	;延时3秒
    CALL NUM 
    
   
    
    
    MOV CX,100		;将竖直方向的两个信号灯的黄色区域涂成红色（黄->红）
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
    MOV AL,02H		;将水平方向的两个信号灯的红色区域涂成绿色（红->绿）
    MOV SI,300
    MOV DI,120
    CALL PAINT
    
    MOV CX,100
    MOV DX,280
    MOV SI,120
    MOV DI,300  
    CALL PAINT
    MOV SI,09H
    MOV AL,'9';延时10秒
    CALL NUM 
    		
    
    
    MOV AL,0EH		;将水平方向的两个信号灯的绿色区域涂成黄色（绿->黄）
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
        
    JMP DENG		;重复执行DENG，使交通灯有颜色持续发生变化
    
    MOV AH,1		
    INT 21H
    
EXIT:
	MOV AX,4C00H
	INT 21H
MAIN ENDP

HLINE PROC NEAR		;绘制水平线，开始点的坐标为（cx,dx）,结束点的坐标为（si,dx）
HLOP:
	MOV AH,0CH		;图形方式下在指定的坐标处写点（DX=像素点的行值，CX=像素点的列值，AL=要写的像素点的值）
	MOV AL,0FH
	MOV BH,0
	INT 10H
	INC	CX
	CMP	CX,SI
	JNZ	HLOP
	RET
HLINE	ENDP

VLINE PROC NEAR		;绘制垂直线，开始点的坐标为（cx,dx）,结束点的坐标为（cx,si）
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

PAINT PROC NEAR	    ;给指定区域涂色，al指定颜色，（cx,dx）为起始点坐标，（si,di）为终止点坐标	
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

HLINE1 PROC NEAR		;用于绘制水平分隔线的子程序
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

VLINE1 PROC NEAR		;用于绘制垂直分割线的子程序
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

PAINT1	PROC NEAR		;用于绘制小车的子程序
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
	
HLINER PROC NEAR		;绘制水平线，开始点的坐标为（cx,dx）,结束点的坐标为（si,dx）
HLOP:
	MOV AH,0CH		;图形方式下在指定的坐标处写点（DX=像素点的行值，CX=像素点的列值，AL=要写的像素点的值）
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
VLINER PROC NEAR		;绘制垂直线，开始点的坐标为（cx,dx）,结束点的坐标为（cx,si）
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
	
HLINEB PROC NEAR		;绘制水平线，开始点的坐标为（cx,dx）,结束点的坐标为（si,dx）
HLOP:
	MOV AH,0CH		;图形方式下在指定的坐标处写点（DX=像素点的行值，CX=像素点的列值，AL=要写的像素点的值）
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
VLINEB PROC NEAR		;绘制垂直线，开始点的坐标为（cx,dx）,结束点的坐标为（cx,si）
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

