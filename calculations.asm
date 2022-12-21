MULTI:         

    MOV BL,11                       
    MOV AH,9 
    MOV AL,0  
    INT 10H    

TAKEINPUT1 PROC                        
    
    PUSH BX                         
    PUSH CX
    PUSH DX

    
    
    XOR BX,BX                       
    
    XOR CX,CX                       
                    
    
    MOV AH,1                        
    INT 21H


    
    CONVDIGIT1: 
                                     
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
    
    CMP AL,13                      
    JNE CONVDIGIT1                     
    
    MOV AX,BX                      
    
    
    JMP MUL_
    
    POP DX                         
    POP CX
    POP BX
    RET                             
    
    

TAKEINPUT1 ENDP 
                        
ADD_: 

;LABEL FOR ADD PRESENT PRICE TO LAST PRICE
   
    MOV B,AX  
    
    MOV BL,4                         
    MOV AH,9 
    MOV AL,0  
    INT 10H 
    
    
    XOR AX,AX                        
    
    MOV AX,B                         
    ADD A,AX                         
    
    
    MOV AX,A                         
    
    PUSH AX                          
    
    
    JMP END


SUB_:
;SUB LABEL FOR DISCOUNT 


  
    MOV B,AX 
    
    LEA DX,PRESENT_PRICE                         
    MOV AH,9
    INT 21H
    
    
    XOR AX,AX                       
    
    MOV AX,B                        
    SUB A,AX                         
    
    
    MOV AX,A                        
    
    PUSH AX  
    
    ADD S,AX 
    
    JMP OUTPUT

MUL_: 
;TO CALCULATE PRESENT PRICE

   
    MOV B,AX             
    
    MOV BL,4
    MOV AH,9                         
    MOV AL,0  
    INT 10H 
    
    LEA DX,E_DISCOUNT                
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        
    
    MOV AX,B
    
    MUL A                            
    
    
    PUSH AX                          
    
    MOV A,AX 
   
                                     
    JMP INPUT_SUB                    
    
    
    
    JMP OUTPUT  
    