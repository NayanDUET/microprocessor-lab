include 'emu8086.inc' 
.model small
.stack 100h
.DATA  


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DX,AX
    
    print 'Enter a character:'
    mov ah,01h  ;take input in al register
    int 21h 
    
    mov bl,al   
    
    mov dl,10 ;for enter
    mov ah,02h
    int 21h
    
    mov dl,13 ;for cursor in first positon
    mov ah,02
    int 21h 
    
    mov cl,'a'
    
    cmp cl,bl
    jge lebel
        
        sub bl,32
        mov dl,bl
        mov ah,02h ;output in dl register
        int 21h
        mov ah,04h ;or break the cmp statement
        int 21h
        
    
    
    lebel:
    add bl,32
    mov dl,bl
    mov ah,02h ;output in dl register
    int 21h
      
    
    MAIN ENDP
END MAIN
RET