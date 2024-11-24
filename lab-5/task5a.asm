;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h 

.DATA
    A dw 4 
                   
MAIN proc
    
    mov ax,@DATA
    mov ds,ax
    
    
    mov cx,A      
    imul cx        
    sub ax,7         
    mov A,ax      

MAIN endp
END main