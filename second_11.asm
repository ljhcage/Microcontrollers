N1L   EQU   45H   ;
N1H   EQU   43H   ;
N2L   EQU   12H   ;
N2H   EQU   05H   ;
         	 
        ORG   0000H ;
        LJMP  MAIN  ;
        
        ORG   0100H		
MAIN:   MOV   R0,   #20H;
        MOV   R1,   #30H;
        MOV   @R0,  #N1L;   低位交给20H
        INC   R0;           地址加一
		MOV   @R0,  #N1H;   高位交给21H
		DEC   R0;           地址复位
				 
		MOV   @R1,  #N2L;   低位交给30H
        INC   R1;           地址加一
        MOV   @R1,  #N2H;   高位交给31H
        DEC   R1;           地址复位
		
		CLR   C;		 赋值结束
        MOV   A,   @R0;      
		ADD   A,   @R1;      低位相加
		MOV   R4,   A;       低位和存于R4
	    INC   R0;           
		INC   R1;    地址移动
				 
		MOV   A,   @R0;
		ADDC  A,   @R1;     高位相加
		MOV   R3,   A;		高位和存于R3

		JC    S1;              判断进位位是否为1
        MOV   R2,   #00H;       进位位为0
        SJMP  OVER;

S1:     MOV   R2,   #01H;       进位位为1

OVER: 	SJMP  $;
        END
