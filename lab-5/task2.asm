;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA 

.CODE 
MAIN PROC 
    
    mov AX, @DATA   
    mov DS, AX 
    
    mov AX,24
    xor DX, DX          
    
    mov BX, AX         
    shr BX, 3
    
 MAIN ENDP
END MAIN      