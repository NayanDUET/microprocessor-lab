;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h  

.DATA


.CODE 
MAIN PROC
    
    mov AX, @DATA   
    mov DS, AX 
    
    
    mov AX,10
    xor DX, DX           
    
    mov BX, AX          
    
    shl BX, 4            
    
    add DX, BX           
    

    
    mov BX, AX           
    shl BX, 3            
    add DX, BX           
    mov BX, AX           
    shl BX, 1            
    add DX, BX           

    add DX, AX
    
    
 MAIN ENDP
END MAIN   