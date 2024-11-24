;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h 
.DATA

ARR DB 2,6,1,9,4


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    XOR SI,SI
    MOV DI,1
SWAP:
    MOV BL,ARR[SI]
    MOV DL,ARR[DI]
    MOV ARR[SI],DL
    MOV ARR[DI],BL
    JMP NEXT
    
LOOP1:
    CMP SI,4
    JE EXIT
    MOV DI,SI
    INC DI
LOOP2:
    CMP DI,5
    JE EXIT
    MOV AL,ARR[SI]
    CMP AL,ARR[DI]
    JG SWAP
NEXT:
    INC DI
    CMP DI,5
    JL LOOP2
    INC SI
    CMP SI,4
    JL LOOP1
EXIT:
    MOV AH,2
    XOR SI,SI
PRINT:
    MOV DL,ARR[SI] 
    ADD DL,'0'
    INT 21H
    INC SI
    CMP SI,5
    JE FINISH 
    JMP PRINT
FINISH:
    
    
    


    MAIN ENDP
END MAIN

ret




