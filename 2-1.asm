       	ORG   0000H ;
        LJMP  MAIN  ;
        
        ORG   0100H		
MAIN:   MOV   A,  #20H;
		CJNE  A,#20,NEG;   不等于20转NEG
NEG:    JNC   SQUR;    大于20转SQUR
		CPL   A;	小于20取反
        SJMP  DONE;
SQUR:   CJNE  A,#40,HALF;  不等于40转
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