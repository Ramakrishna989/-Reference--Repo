	AREA CHECK,CODE,READONLY
ENTRY
START
	LDR R0,=INPUT
	LDR R0,[R0]
	MOV R5,#00  ;EVEN - 0X11111111,ODD - 0XFFFFFFFF
	
	MOVS R0,R0,LSR #1
	BCS ODD
	MOV R5,#0X01
	B STOP
ODD
	MOV R5,#0X0F

STOP
	NOP
	NOP
INPUT DCD 0X11
	END
	