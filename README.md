# Medical-billing
Project Idea
Project name: Medical-billing
The idea of the project is an online store for a pharmacy, people enter it, and a list of available medicines and their prices is displayed, and each type of medicine has its own code.
The person chooses the code of the medicine he wants to buy, then determines the quantity he wants, then the discount is entered, if there is.
Then it appears to the person if he wants to buy more, and in this case there are two possibilities:
1- If he chooses to buy more, the list will appear to him again, and the purchase process will be completed, and then the total cost of the two operations will be shown.
2 - If the person chooses that he does not want to buy more, the cost will be shown to him.

### the first part is definition part 
```
.model small
```
## Define the model of the program 

(Small-medium-compact-large-huge)
```
.stack 100H
```
## To store 100 byte for stack 
```
.data
```
.data segment (64k)

## Define the variables and tell the operating system with it 

#### DB : Define single byte 
#### DW : Define word
#### DD : Define Double 
#### DQ : Define quadword  ( 8 Bytes ) unsupported in emulator
#### DT : Define TEN (10 Bytes ) unsupported in emulator

## Structure of definition of variables

#### Name of the variable.                  Type of the variable.              Initialization 
```
panadol   DB  10,13,' 1       Panadol              10EGP $'
``




### the second part is print functions,color code and compare part
Part 2

-Transmits data to AX and then transmits data from AX to DS (Data Segment).
-Define the variables, print them to the screen and print a new line.
-Determine the background colors and printed words, compare the value and move to the label of this value.

      MOVAX, @DATA
      MOV DS, AX
-It transfers data to AX and then transfers data from AX to DS(Data segment)

     LEA DX,INTRO               
     MOV AH,9
     INT 21H
-print intro containing the title(Medical Billing Store)
          
     LEA DX,NL                  
     MOV AH,9
     INT 21H       
-print new line

     JMP BEGINTOP                
-go to BEGINTOP lebel

ERROR121:
     LEA DX,ER_MSG               
     MOV AH,9
     INT 21H  
-print error message
                           
     LEA DX,ERASK
     MOV AH,9
     INT 21H
-user will be asked to input again
    
                                 
     MOV BL,10                   
     MOV AH,9 
     MOV AL,0  
     INT 10H 
-code for color
-10 Light Green	
-9  Light Blue               
      
     LEA DX,INFO                
     MOV AH,9 
     INT 21H                     
-print info string
   
     MOV BL,11                   
     MOV AH,9 
     MOV AL,0  
     INT 10H   
-code for color   
-11 Light Cyan	
-9  Light Blue

        
     LEA DX,Panadol              
     MOV AH,9
     INT 21H 
-Print Panadol string
  
                  
     LEA DX,Paracetamol         
     MOV AH,9
     INT 21H  
-Print Paracetamol string  
     
     LEA DX,Cleritek             
     MOV AH,9
     INT 21H    
-Print Cleritek string                      
     LEA DX,Aspirin             
     MOV AH,9
     INT 21H   
-Print Aspirin string 
                        
     LEA DX,Brufen              
     MOV AH,9
     INT 21H  
-Print Brufen string      
              
     LEA DX,Surbex               
     MOV AH,9
     INT 21H 
-Print Surbex string      
     
     LEA DX,Arinac               
     MOV AH,9
     INT 21H    
-Print Arinac string 
      
     LEA DX,Sinopharm            
     MOV AH,9       
     INT 21H    
-Print Sinopharm string           
      
     LEA DX,Pfizer               
     MOV AH,9       
     INT 21H    
-Print Pfizer string 
            
     LEA DX,ENTER                
     MOV AH,9       
     INT 21H    
-Print enter string      
     
-this part compare value and jump to label of value
                            
     CMP AL,49                   
     JE Pana_dol
-if AL=1 go to pana_dol label 
    
     CMP AL,50                   
     JE Paraceta_mol
-if AL=2 go to Paraceta_mol label
     
     CMP AL,51                   
     JE Cleri_tek
-if AL=3 go to Cleri_tek label
     
     CMP AL,52                  
     JE Aspi_rin
-if AL=4 go to Aspi_rin label
     
     CMP AL,53                   
     JE Bru_fen
-if AL=5 go to Bru_fen label
     
     CMP AL,54                   
     JE Sur_bex
-if AL=6 go to Sur_bex label
     
     CMP AL,55                   
     JE Ari_nac
-if AL=7 go to Ari_nac label
     
     CMP AL,56                   
     JE Sino_pharm 
-if AL=8 go to Sino_pharm  label
     
     CMP AL,57                   
     JE Pfi_zer 
-if AL=9 go to Pfi_zer label
