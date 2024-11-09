; Author: Nayan Chandra, CSE-21, DUET

INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA
   

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 
    
    
  
     
     mov ah,01h
     int 21h 
     
     mov bl,al
     
     cmp bl,'0'
     jge grater
     print 'invalid input'
        jp exit
     
     
     
      grater:
        cmp bl,'9'
        jle smaller 
        
            cmp bl,'A'
            jge graterA
            jp exit
            
   
            graterA:
             cmp bl,'G'
             jl found_AF 
             
             ; invalid input 
             mov dl,10
             mov ah,02h
             int 21h
             mov dl, 13
             mov ah,02h
             int 21h
             print 'invalid input'
             
             jp exit
             
             
             
             
            found_AF:
             mov dl,bl
             mov ah,02h
             int 21h
             jp exit
             
        
        
        smaller:
          
          mov dl,bl
          mov ah,02h
          int 21h
          jp exit
          
  
    
    exit:

    

MAIN ENDP
END MAIN
