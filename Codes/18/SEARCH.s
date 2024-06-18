	AREA SEARCH, CODE,READONLY
ENTRY
START
	MOV R1,#0	;POSITION
	LDR R2,=TABLE
	MOV R5,#0	;RESULT
	LDR R3,=VALUE
	LDR R3,[R3]
LOOP
	LDR R4,[R2],#4
	CMP R4,R3
	BEQ	FOUND
	ADD R1,R1,#1
	CMP R1,#7	;7 - SIZEOF THE ARRAY
	BEQ NOTFOUND
	B LOOP
FOUND 
	MOV R5,R1
NOTFOUND
	MOV R5,#0XFFFFFFFF
	NOP
	
STOP B STOP
VALUE DCD 0XAAAA1234
TABLE DCD 0X11110202,0X22220101,0XAAAA1234,0XABCD1234,0X1234DDDE,0XABCDCCC1,0X1
	END