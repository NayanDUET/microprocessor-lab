;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h 
.DATA

MSG DB 'We ARE DUET STuDeNTS',0Dh,0Ah,'$'
F DB ?
L DB ?


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,20 
    XOR SI,SI 
    
    
TOP1:
    MOV AL,MSG[SI]
    CMP AL,' '
    JE SKIP1  
    CMP AL,'a'    
    JGE FIND_LOWER1 
    

    
SKIP1:
    INC SI
    
    
    LOOP TOP1
    JMP EXIT
    
FIND_LOWER1:
   MOV F,AL
   MOV AH,2
   MOV DL,F
   INT 21H
   MOV DL,0AH
   INT 21H
   MOV DL,0DH
   INT 21H

   
   
TOP:
    MOV AL,MSG[SI]
    CMP AL,' '
    JE SKIP  
    CMP AL,'a'
    JGE FIND_LOWER 
    
RECHECK:
    
SKIP:
    INC SI
    
    
    LOOP TOP
    JMP EXIT
    
FIND_LOWER:
   MOV L,AL
   JMP RECHECK  
   
   
EXIT:
    MOV AH,2
    MOV DL,L
    INT 21H


    MAIN ENDP
END MAIN

ret




