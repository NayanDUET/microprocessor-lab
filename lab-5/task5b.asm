;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h 

.DATA
   a dw 4 
   b dw 5
   
MAIN proc  
    
    mov ax,@DATA
    mov ds,ax
    mov ax,a
    sub ax,b
    mov dx,b
    sub dx,10
    imul dx 
    mov cx,ax 
    
MAIN endp
END main