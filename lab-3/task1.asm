;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA
    N DB 0                     

.CODE
MAIN PROC
    MOV AX, @DATA   
    MOV DS, AX
 

   
    MOV AH, 01h         
    INT 21h            
    SUB AL, '0'       
    MOV N, AL           

   
    MOV CL, 0          
    MOV BL, 1       

    LOOP_START:
    ADD CL, BL          
    INC BL             
    CMP BL, N           
    JG END_LOOP         
    JMP LOOP_START

    END_LOOP:

MAIN ENDP
END MAIN