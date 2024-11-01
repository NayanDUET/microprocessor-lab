;Nayan Chandra,CSE-21,DUET
INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA
  
    N DB 0              
    div3 DB ' is divisible by 3$', 0 
    div5 DB ' is divisible by 5$', 0
    notdiv DB 'not divisible by 3 or 5$', 0
   
.CODE
MAIN PROC
    MOV AX, @DATA    
    MOV DS, AX 
    
    MOV ah,01h
    INT 21h
    SUB al,'0' 
    MOV cl,al ; store in cl for checked by 5    
   
    MOV bl,3
    MOV ah,0
    
    DIV bl
    CMP ah,0
    JE level
              
              
        MOV AL,CL
        MOV bl,5
        MOV ah,0
        
        DIV bl
        
        CMP ah,0
        JE level2
    
            MOV DX, OFFSET notdiv 
            MOV AH, 09h             
            INT 21h
            JMP EXIT 
    
    level2:
    
    MOV DX, OFFSET div5 
    MOV AH, 09h             
    INT 21h
    JMP EXIT 
    
    level:
    
    MOV DX, OFFSET div3 
    MOV AH, 09h             
    INT 21h
    JMP EXIT 
        
      
   EXIT:   
    
 


MAIN ENDP
END MAIN
