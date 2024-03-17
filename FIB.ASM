DATA SEGMENT
FIB1 DB 0
FIB2 DB 1
FIB3 DB ?
FIBS DB 10 DUP(0)
LIMIT DB 10
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX, DATA
MOV DS, AX
MOV AX, 0000H
LEA SI, FIBS
MOV CL, LIMIT
MOV AL, 0
MOV [SI], AL
INC SI
MOV AL, 1
MOV [SI], AL
INC SI
DEC CL
DEC CL
BACK:
MOV AL, FIB1
MOV BL, FIB2
ADD AL, BL
MOV [SI], AL
INC SI
MOV FIB1, BL
MOV FIB2, AL
DEC CL
JNZ BACK                                                                                                                                                                                                                                                                                                  
MOV AH, 4CH
INT 21H
CODE ENDS
END START






