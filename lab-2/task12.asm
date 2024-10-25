include 'emu8086.inc'
.DATA  

X db ?
Y db ?
Z db ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DX,AX
    
    print 'Enter a value of X:'
    mov ah,01h  ;take input in al register
    int 21h
    mov X,al  
    mov dl,10 ;for enter
    mov ah,02h
    int 21h
    
    mov dl,13 ;for cursor in first positon
    mov ah,02
    int 21h  
    
    print 'Enter a value of Y:'
    mov ah,01h
    int 21h  
    mov Y,al    
    mov dl,10 ;for enter
    mov ah,02h
    int 21h
    
    mov dl,13 ;for cursor in first positon
    mov ah,02
    int 21h 
    
    print 'Z = '
     
    mov bl,X
    sub bl,Y
    add bl,1
    mov Z,bl
    
    mov dl,Z
             
    mov ah,02h ;output in dl register
    int 21h
    
    
    MAIN ENDP
END MAIN
RET