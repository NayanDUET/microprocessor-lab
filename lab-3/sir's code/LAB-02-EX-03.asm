ORG 0100h

.CODE

MAIN PROC

; Input a character
MOV AH, 1
INT 21h
MOV BL, AL

; Go to a new line with carriage return and line feed
MOV AH, 2
MOV DL, 0DH
INT 21h
MOV DL, 0AH
INT 21h

; Check if the character is uppercase
CMP BL, 'A'
JNGE EXIT
CMP BL, 'Z'
JLE CHAR_UPPER

; Check if the character is lowercase
CMP BL, 'a'
JNGE EXIT
CMP BL, 'z'
JLE CHAR_LOWER

; Convert uppercase to lowercase and set up forward print
CHAR_UPPER:
    ADD BL, 32
    MOV DL, BL
    MOV CX, 5
    JMP OUTPUT_FORWARD
; Convert lowercase to uppercase and set up forward print
CHAR_LOWER:
    SUB BL, 32
    MOV DL, BL
    MOV CX, 5
    JMP OUTPUT_FORWARD

OUTPUT_FORWARD:
    INC DL

    ; Check for wrap-around after 'Z'
    CMP DL, 'Z'
    JLE NO_WRAP_FORWARD
    MOV DL, 'A'     ; Wrap around to 'A' if DL goes past 'Z'

NO_WRAP_FORWARD:
    MOV AH, 2
    INT 21h

    LOOP OUTPUT_FORWARD

; Go to a new line with carriage return and line feed
MOV AH, 2
MOV DL, 0DH
INT 21h
MOV DL, 0AH
INT 21h

; Setup for backward print
MOV CX, 5
MOV DL, BL

OUTPUT_BACKWARD:
    DEC DL

    ; Check for wrap-around before 'A'
    CMP DL, 'A'
    JGE NO_WRAP_BACKWARD
    MOV DL, 'Z'     ; Wrap around to 'Z' if DL goes below 'A'

NO_WRAP_BACKWARD:
    MOV AH, 2
    INT 21h

    LOOP OUTPUT_BACKWARD

EXIT:
    ; Return to DOS
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
