;Nayan Chandra,CSE-21,DUET  

ORG 100h
.DATA 
hexmesage DW "Enter a hex Number: $";
decmessage DW "decimal is : $";  
error DW "inter  illegal character,: $";
yes DW "Do you want to again/y or no if yes just type y otherwise any letter !$" 
Ter DW "Program is terminated.$"
A DB ?
B DW 0d

.CODE 
MAIN PROC
    MOV AX, @DATA 
    MOV DX, AX
    
    InputOutput:  
    MOV AH, 9
    MOV DX, OFFSET hexmesage
    INT 21h
    InputOutput1:
    MOV AH,1 
    INT 21h
    
    ;SUB AL,'0'
    MOV A, AL
    JMP Check
     
    A10:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '0' 
    INT 21h
    JMP YESS
    
    B11:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '1' 
    INT 21h
    JMP YESS
    
    C12:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '2' 
    INT 21h
    JMP YESS
     
    D13:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '3' 
    INT 21h
    JMP YESS
    
    E14:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '4' 
    INT 21h
    JMP YESS
    
    F15:
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DX, '1' 
    INT 21h
    MOV DX, '5' 
    INT 21h
    JMP YESS
       
    Check:
    CMP A, 'A'
    JE A10
    CMP A, 'B'
    JE B11
    CMP A, 'C'
    JE C12
    CMP A, 'D'
    JE D13
    CMP A, 'E'
    JE E14
    CMP A, 'F'
    JE F15
    CMP A, '0'
    JL eror 
    CMP A, '9'
    JG eror
    
    ;Newline
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    ;output 1 to 9     
    MOV AH, 9
    MOV DX, OFFSET decmessage
    INT 21h
    MOV AH,2
    MOV DL, A 
    INT 21h
    
    yess:
    
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    
    MOV AH, 9
    MOV DX, OFFSET yes
    INT 21h
    MOV AH,1 
    INT 21h 
    
    CMP AL, 'y'
    JNE EXIT
    
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h 
    
    JMP InputOutput
    Eror:
    ;newline
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h 
    ;eror massage print
    MOV AH, 9
    MOV DX, OFFSET error
    INT 21h  
    ;jumb to after input massage
    JMP InputOutput1
    EXIT:
    ;newline
    MOV AH, 2 
    MOV DL, 0DH 
    INT 21h
    MOV DL, 0AH 
    INT 21h
    
    MOV AH, 9
    MOV DX, OFFSET ter
    INT 21h
 
    MAIN ENDP
END MAIN
       