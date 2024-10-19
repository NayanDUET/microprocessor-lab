ORG 0100h
.DATA  


A dw 3
B dw 1
C dw 1
D dw 1


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DX,AX
    
    
    MOV BX,A
    ADD BX,D
    SUB BX,B
    SUB BX,C
    
    
    MAIN ENDP
END MAIN
RET