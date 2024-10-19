ORG 0100h
.DATA  


E dw 1H


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DX,AX
    
    
    MOV BX,5H
    SUB BX,E
    ADD BX,10H
    MOV AX,BX
    
    
    MAIN ENDP
END MAIN
RET