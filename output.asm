  
 
 

    
OUTPUT:         



CONVCHAR1 PROC
    
    
    PUSH AX                          
    PUSH BX
    PUSH CX
    PUSH DX
    
    XOR CX,CX                        
    MOV BX,10                       
    
    REPEAT1:
    
    XOR DX,DX                        
    DIV BX                           
    
    PUSH DX                          
    INC CX                           
    
    OR AX,AX                         
    JNE REPEAT1                      
    
    MOV AH,2
                                    
    
    PRINT_LOOP:
    
    POP DX                           
    OR DL,30H                        
    INT 21H                          
    LOOP PRINT_LOOP                  
    
    POP DX
    POP CX                           
    POP BX
    POP AX 
    
    JMP ASK
    
    RET
    CONVCHAR1 ENDP 

OUTPUT2: 

    LEA DX,TOTAL_PRICE                        
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        
    
    MOV AX,S                         
    
    
    
    
                                     
CONVCHAR2 PROC
    
    
    PUSH AX                          
    PUSH BX
    PUSH CX
    PUSH DX

    XOR CX,CX                        
    MOV BX,10                       
    
    REPEAT12:
    
    XOR DX,DX                        
    DIV BX                           
    
    PUSH DX                           
    INC CX                           
    
    OR AX,AX                         
    JNE REPEAT12                     
    
    MOV AH,2                         
    
    PRINT_LOOP2:
    
    POP DX                           
    OR DL,30H                        
    INT 21H                         
    LOOP PRINT_LOOP2                 
    
    POP DX
    POP CX                           
    POP BX
    POP AX 
    

    CONVCHAR2 ENDP 
 

     
END:
MOV AH, 4CH                  
INT 21H




