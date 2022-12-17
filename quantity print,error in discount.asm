

;fills all prices of medicines into variable A

Pana_dol:
                                 
MOV A,10                        

JMP QUANTITY

Paraceta_mol:

MOV A,15                       

JMP QUANTITY 

Cleri_tek:

MOV A,13                        

JMP QUANTITY 

Aspi_rin: 
               
MOV A,12                        

JMP QUANTITY 

Bru_fen: 

MOV A,19                        

JMP QUANTITY 

Sur_bex:

MOV A,20                       

JMP QUANTITY 

Ari_nac:   

MOV A,16                       

JMP QUANTITY 


Sino_pharm:   

MOV A,22                        

JMP QUANTITY 

Pfi_zer:      

MOV A,28                        

JMP QUANTITY 

;quantity display   

QUANTITY:  

    MOV BL,6 
    MOV AH,9                     
    MOV AL,0  
    INT 10H

    LEA DX,E_QUANTITY            
    MOV AH,9
    INT 21H 
    
    JMP MULTI           

; ask user for more buying
     
ASK: 

    MOV BL,11                     
    MOV AH,9 
    MOV AL,0  
    INT 10H
    
    LEA DX,AGAIN                 
    MOV AH,9
    INT 21H 
    
    MOV AH,1                     
    INT 21H
    
    CMP AL,49                    
    JE BEGINTOP
    
    CMP AL,50
    JE OUTPUT2                   
    
    LEA DX,ER_MSG
    MOV AH,9                     
    INT 21H
    
    JMP ASK                      
    
;error in quantity input

ERROR:
    
    LEA DX,ER_MSG                
    MOV AH,9
    INT 21H
    
    JMP QUANTITY 
                    
; error in discount

ER_DISCOUNT:   

    LEA DX,ER_MSG                
    MOV AH,9
    INT 21H
    
    LEA DX,NL                    
    MOV AH,9
    INT 21H
    
    LEA DX,EN_DIS               
    MOV AH,9
    INT 21H
    
    JMP INPUT_SUB               
 
