.CODE
  
     MOV AX, @DATA               
     MOV DS, AX     
     
     
     LEA DX,INTRO                 
     MOV AH,9
     INT 21H
       
          
     LEA DX,NL                   
     MOV AH,9
     INT 21H       

     JMP BEGINTOP                

 ERROR121:  
                  
     LEA DX,ER_MSG               
     MOV AH,9
     INT 21H 
                                 
     LEA DX,ERASK
     MOV AH,9
     INT 21H
                

 BEGINTOP:   
 
     LEA DX,NL                   
     MOV AH,9
     INT 21H
    
                                 
     MOV BL,10                   
     MOV AH,9 
     MOV AL,0  
     INT 10H                
      
     LEA DX,INFO                
     MOV AH,9 
     INT 21H                     
     
     MOV BL,11                   
     MOV AH,9 
     MOV AL,0  
     INT 10H   
   
        

     LEA DX,Panadol              
     MOV AH,9
     INT 21H 
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H

                  
     LEA DX,Paracetamol          
     MOV AH,9
     INT 21H  
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Cleritek             
     MOV AH,9
     INT 21H    
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Aspirin              
     MOV AH,9
     INT 21H   
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Brufen               
     MOV AH,9
     INT 21H  
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Surbex               
     MOV AH,9
     INT 21H 
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
     LEA DX,Arinac               
     MOV AH,9
     INT 21H    
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
      
     LEA DX,Sinopharm            
     MOV AH,9       
     INT 21H    
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
     
      
     LEA DX,Pfizer               
     MOV AH,9       
     INT 21H    
     
     LEA DX,NL                   
     MOV AH,9
     INT 21H
            
     LEA DX,ENTER                
     MOV AH,9       
     INT 21H    
        
     
     MOV AH,1                    
     INT 21H 
     
                                 
     CMP AL,49                   
     JE Pana_dol
     
     CMP AL,50                   
     JE Paraceta_mol
     
     CMP AL,51                   
     JE Cleri_tek
     
     CMP AL,52                   
     JE Aspi_rin
     
     CMP AL,53                   
     JE Bru_fen
     
     CMP AL,54                   
     JE Sur_bex
     
     CMP AL,55                   
     JE Ari_nac
     
     CMP AL,56                   
     JE Sino_pharm 
     
     CMP AL,57                   
     JE Pfi_zer 
    
    
     
     JMP ERROR121                 
 