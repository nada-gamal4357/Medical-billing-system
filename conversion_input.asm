INPUT_ADD: 

TAKEINPUT2 PROC                          
    
    PUSH BX                          
    PUSH CX
    PUSH DX
    
        
    BEGIN1:
    
    
    XOR BX,BX                        
    
    XOR CX,CX                        
                    
    
    MOV AH,1                         
    INT 21H

    
    CONVDIGIT2: 
                                     
    CMP AL,48
    JL ERROR
    
    CMP AL,57                        
    JG ERROR


    AND AX,00FH                      
    PUSH AX                          
    
    MOV AX,10                        
    MUL BX                           
    POP BX                           
    ADD BX,AX                        
    
    
    MOV AH,1                         
    INT 21H
    
    CMP AL,0DH                       
    JNE CONVDIGIT2                      
    
    MOV AX,BX                        
                         
    
    JMP ADD_                         
    
    POP DX                           
    POP CX
    POP BX
    RET                              
    
    

TAKEINPUT2 ENDP   

INPUT_SUB: 

TAKEINPUT3 PROC
    
    PUSH BX                          
    PUSH CX
    PUSH DX
    
    
    
    XOR BX,BX                        
    
    XOR CX,CX                        
                    

    MOV AH,1                         
    INT 21H
    
    
    
    CONVDIGIT3: 
    
    CMP AL,48                        
    JL ER_DISCOUNT
    
    CMP AL,57                         
    JG ER_DISCOUNT


    AND AX,00FH                      
    PUSH AX                          
    
    MOV AX,10                        
    MUL BX                           
    POP BX                           
    ADD BX,AX                        
    
    
    MOV AH,1
    INT 21H
    
    CMP AL,0DH                       
    JNE CONVDIGIT3                      
    
    MOV AX,BX                        
    
    OR CX,CX                         
    
    
    JMP SUB_

    POP DX                           
    POP CX
    POP BX
    RET                              
                            


TAKEINPUT3 ENDP 

