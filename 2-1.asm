       	ORG   0000H ;
        LJMP  MAIN  ;
        
        ORG   0100H		
MAIN:   MOV   A,  #20H;
		CJNE  A,#20,NEG;   ������20תNEG
NEG:    JNC   SQUR;    ����20תSQUR
		CPL   A;	С��20ȡ��
        SJMP  DONE;
SQUR:   CJNE  A,#40,HALF;  ������40ת
		MOV   B,A;
		CLR C;
        MUL   AB ;
		SJMP DONE;
HALF:   JNC SQUR
        MOV B,#2;
        DIV AB;
        SJMP DONE;
DONE:   SJMP $;
        END