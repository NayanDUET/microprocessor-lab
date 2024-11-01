;Nayan Chandra,CSE-21,DUET

INCLUDE 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA 

 a db ?                       

.CODE
MAIN PROC
    MOV AX, @DATA   
    MOV DS, AX
 
   
   mov ah,01h
   int 21h 
   
   mov a,al
   
   mov bl,al
   mov cl,'a'  
   
   cmp cl,bl
   jg big
     sub bl,32 
     
     
            mov dl,10
            mov ah,02h
            int 21h
            
            mov dl,13
            mov ah,02h
            int 21h
     
          mov cx,5   ; for forward print
          lp: 
          
          
          cmp bl,'Z'
          je then     
             jmp pass
             then:
                xor bl,bl
                mov bl,'A'
                dec bl
          pass:
          inc bl
          mov dl,bl
          mov ah,02h
          int 21h
          
          
                        
        loop lp    
        
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        
        xor bl,bl
        mov bl,a
        sub bl,32 
    
         mov cx,5   ; for backward print
              loop_back:
              
              cmp bl,'A'
              je go     
                 jmp chol
                 go:
                    xor bl,bl
                    mov bl,'Z'
                    inc bl
              chol: 

              dec bl
              mov dl,bl
              mov ah,02h
              int 21h 
               
                            
            loop loop_back  
    
    jmp EXIT 
   
   big:
      add bl,32 
      mov dl,10
      mov ah,02h
      int 21h
        
      mov dl,13
      mov ah,02h
      int 21h
      mov cx,5
      
      lop:           ; for forward print
       cmp bl,'z'
      je thenn
         jmp passs
         thenn:
            xor bl,bl
            mov bl,'a'
            dec bl
      passs:
      
      inc bl
      mov dl,bl
      mov ah,02h
      int 21h 
      
    loop lop 
    
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        
        xor bl,bl
        mov bl,a
        add bl,32 
    
         mov cx,5   ; for backward print
              loop_backk:
              
              cmp bl,'a'
              je goo     
                 jmp choll
                 goo:
                    xor bl,bl
                    mov bl,'z'
                    inc bl
              choll: 

              dec bl
              mov dl,bl
              mov ah,02h
              int 21h 
                            
            loop loop_backk    
    
    jmp EXIT 
    
  EXIT:  

MAIN ENDP
END MAIN