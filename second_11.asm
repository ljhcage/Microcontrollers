N1L   EQU   45H   ;
N1H   EQU   43H   ;
N2L   EQU   12H   ;
N2H   EQU   05H   ;
         	 
        ORG   0000H ;
        LJMP  MAIN  ;
        
        ORG   0100H		
MAIN:   MOV   R0,   #20H;
        MOV   R1,   #30H;
        MOV   @R0,  #N1L;   ��λ����20H
        INC   R0;           ��ַ��һ
		MOV   @R0,  #N1H;   ��λ����21H
		DEC   R0;           ��ַ��λ
				 
		MOV   @R1,  #N2L;   ��λ����30H
        INC   R1;           ��ַ��һ
        MOV   @R1,  #N2H;   ��λ����31H
        DEC   R1;           ��ַ��λ
		
		CLR   C;		 ��ֵ����
        MOV   A,   @R0;      
		ADD   A,   @R1;      ��λ���
		MOV   R4,   A;       ��λ�ʹ���R4
	    INC   R0;           
		INC   R1;    ��ַ�ƶ�
				 
		MOV   A,   @R0;
		ADDC  A,   @R1;     ��λ���
		MOV   R3,   A;		��λ�ʹ���R3

		JC    S1;              �жϽ�λλ�Ƿ�Ϊ1
        MOV   R2,   #00H;       ��λλΪ0
        SJMP  OVER;

S1:     MOV   R2,   #01H;       ��λλΪ1

OVER: 	SJMP  $;
        END
