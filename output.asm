  
 
;yara 

    
OUTPUT:         

;OUTDEC PROC IS FOR GIVING THE OUTPUT OF THE PRESENT AMOUNT

CONVCHAR1 PROC
    
    
    PUSH AX                          ;SAVE REGISTERS
    PUSH BX
    PUSH CX
    PUSH DX
    
    XOR CX,CX                        ;CX COUNTS DIGITS
    MOV BX,10                       ;BX HAS DIVISOR
    
    REPEAT1:
    
    XOR DX,DX                        ;PREP HIGH WORD
    DIV BX                           ;AX = QUOTIENT, DX=REMAINDER
    
    PUSH DX                          ;SAVE REMAINDER ON STACK
    INC CX                           ;COUNT = COUNT +1
    
    OR AX,AX                         ;QUOTIENT = 0?
    JNE REPEAT1                      ;NO, KEEP GOING
    
    MOV AH,2
                                    ;PRINT CHAR FUNCTION
    
    PRINT_LOOP:
    
    POP DX                           ;DIGIT IN DL
    OR DL,30H                        ;CONVERT TO CHAR
    INT 21H                          ;PRINT DIGIT
    LOOP PRINT_LOOP                  ;LOOP UNTILL DONE
    
    POP DX
    POP CX                           ;RESTORE REGISTERS
    POP BX
    POP AX 
    
    JMP ASK
    
    RET
    CONVCHAR1 ENDP 

OUTPUT2: 

    LEA DX,TOTAL_PRICE                        ;PRINT FINAL TOTAL
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        ;CLEAR AX
    
    MOV AX,S                         ;SET AX INTO 0
    
    
    ;OUTDEC2 IS FOR GIVING THE TOTAL OUTPUT OF THE AMOUNT
    
                                     
CONVCHAR2 PROC
    
    
    PUSH AX                          ;SAVE REGISTERS
    PUSH BX
    PUSH CX
    PUSH DX

    XOR CX,CX                        ;CX COUNTS DIGITS
    MOV BX,10                       ;BX HAS DIVISOR
    
    REPEAT12:
    
    XOR DX,DX                        ;PREP HIGH WORD
    DIV BX                           ;AX = QUOTIENT, DX=REMAINDER
    
    PUSH DX                          ;SAVE REMAINDER ON STACK
    INC CX                           ;COUNT = COUNT +1
    
    OR AX,AX                         ;QUOTIENT = 0?
    JNE REPEAT12                     ;NO, KEEP GOING
    
    MOV AH,2                         ;PRINT CHAR FUNCTION
    
    PRINT_LOOP2:
    
    POP DX                           ;DIGIT IN DL
    OR DL,30H                        ;CONVERT TO CHAR
    INT 21H                          ;PRINT DIGIT
    LOOP PRINT_LOOP2                 ;LOOP UNTILL DONE
    
    POP DX
    POP CX                           ;RESTORE REGISTERS
    POP BX
    POP AX 
    

    CONVCHAR2 ENDP 
 

     
END:
MOV AH, 4CH                  
INT 21H




