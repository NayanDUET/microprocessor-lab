ORG 0100h
.DATA  


A dw 3
B dw 3
C dw 2


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DX,AX
    
    
    MOV DX,A
    ADD DX,B
    ADD DX,C
    
    
    MAIN ENDP
END MAIN
RET