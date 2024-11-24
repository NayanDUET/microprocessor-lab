;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h 
.DATA

NUM DW 1,4,9,16,25,36,49,64,81
N DB ?
RESULT DW ?


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    XOR CX,CX
    
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV CL, AL 
    XOR SI,SI
    XOR BX,BX
    
TOP: 
    ADD BX,NUM[SI]
    ADD SI,2

    
    LOOP TOP
    
    MOV RESULT,BX
    


    MAIN ENDP
END MAIN

ret




