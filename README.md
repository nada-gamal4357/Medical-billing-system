# Medical-billing
# Project Idea
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
```





# Part 2
## -The second part is print functions,color code and compare part
## -Transmits data to AX and then transmits data from AX to DS (Data Segment).
## -Define the variables, print them to the screen and print a new line.
## -Determine the background colors and printed words, compare the value and move to the label of this value.
```
      MOV AX, @DATA
      MOV DS, AX
```
### -It transfers data to AX and then transfers data from AX to DS(Data segment) 
```
     LEA DX,INTRO               
     MOV AH,9
     INT 21H
```
### -print intro containing the title(Medical Billing Store)
```
     LEA DX,NL                  
     MOV AH,9
    INT 21H
```
### -print new line
```
     JMP BEGINTOP
```  
### -go to BEGINTOP lebel
```
ERROR121:
     LEA DX,ER_MSG               
     MOV AH,9
     INT 21H  
```
### -print error message
```                           
     LEA DX,ERASK
     MOV AH,9
     INT 21H
```
### -user will be asked to input again
``` 
     MOV BL,10                   
     MOV AH,9 
     MOV AL,0  
     INT 10H 
```
### -code for color
### -10 Light Green	
```   
     LEA DX,INFO                
     MOV AH,9 
     INT 21H                     
```
### -print info string
```   
     MOV BL,11                   
     MOV AH,9 
     MOV AL,0  
     INT 10H   
```
### -code for color   
### -11 Light Cyan	
```
     LEA DX,Panadol              
     MOV AH,9
     INT 21H 
```
### -Print Panadol string
```              
     LEA DX,Paracetamol         
     MOV AH,9
     INT 21H  
```
### -Print Paracetamol string  
```     
     LEA DX,Cleritek             
     MOV AH,9
     INT 21H    
````
### -Print Cleritek string                      
```
     LEA DX,Aspirin             
     MOV AH,9
     INT 21H   
```
### -Print Aspirin string 
```                     
     LEA DX,Brufen              
     MOV AH,9
     INT 21H  
```
### -Print Brufen string      
```              
     LEA DX,Surbex               
     MOV AH,9
     INT 21H 
```
### -Print Surbex string      
```     
     LEA DX,Arinac               
     MOV AH,9
     INT 21H    
```
### -Print Arinac string 
```      
     LEA DX,Sinopharm            
     MOV AH,9       
     INT 21H    
```
### -Print Sinopharm string           
```   
     LEA DX,Pfizer               
     MOV AH,9       
     INT 21H    
```
### -Print Pfizer string 
```            
     LEA DX,ENTER                
     MOV AH,9       
     INT 21H    
```
### -Print enter string      
     
# This part compare value and jump to label of value
```                            
     CMP AL,49                   
     JE Pana_dol
```
### -if AL=1 go to pana_dol label 
```  
     CMP AL,50                   
     JE Paraceta_mol
```
### -if AL=2 go to Paraceta_mol label
```     
     CMP AL,51                   
     JE Cleri_tek
```
### -if AL=3 go to Cleri_tek label
```     
     CMP AL,52                  
     JE Aspi_rin
```
### -if AL=4 go to Aspi_rin label
```     
     CMP AL,53                   
     JE Bru_fen
```
### -if AL=5 go to Bru_fen label
```     
     CMP AL,54                   
     JE Sur_bex
```
### -if AL=6 go to Sur_bex label
```     
     CMP AL,55                   
     JE Ari_nac
```
### -if AL=7 go to Ari_nac label
```     
     CMP AL,56                   
     JE Sino_pharm 
```
### -if AL=8 go to Sino_pharm  label
```     
     CMP AL,57                   
     JE Pfi_zer 
```
### -if AL=9 go to Pfi_zer label


# part 3
## -this part includes  the fill of all prices values in variable A to use it in calculation of a price of any amount of medicines. 
## -display of quantity in the screen, errors in quantity ,errors in discount  and color codes.
## -this code means move value of price of panadol to A and then Jump to quantity

```
Pana_dol:                          
MOV A,10
JMP QUANTITY
```
## -to display the quantity string and make calculations,then it will go to MULTI lebel where the price will be multiplied with the amount.
```
LEA DX,E_QUANTITY            
    MOV AH,9
    INT 21H 
    JMP MULTI  
```
## -ASK lebel is used to ask the user for buying more again:
### if user press on YES, this means he wants to buy again, the program will go to medicines menu and buy again.
### if user press on NO, this means he doesn't want to buy again,the progrm will go to output to calculate total price.
### if any error in input, it will ask user again to buy. 
```
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
 ```
### -during user is entering discount, if wrong input is occurs ,error message will be displayed, program will jump 
### to input discount to make user able to enter the discount again.  
 ```
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
 ```



# part 4

# this part is used to calculate medical billing system calculations its divided into sub functions:

## -first part is used to convert character to digit
## -second part is used to calculate the total price (total price=present price + last price ) 
## -third part is used to calculate discount (present price=price-discount)
## -forth part is used to multiply the price in quantity to get price without discount

### This part is responsible for taking the quantity from the customer, examining it and converting it from a char to a digit
```

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

    AND AX,00FH                         -convert to digit              
    PUSH AX                              -save on stak                       
    
    MOV AX,10                          -PUT AX=10
    MUL BX                             -AX=TOTAL * 10                         
    POP BX                             -GET DIGIT BACK
    ADD BX,AX                          -TOTAL = TOTAL X 10 +DIGIT
    
    
    MOV AH,1
    INT 21H
    
    CMP AL,13                      
    JNE CONVDIGIT1                     
    
    MOV AX,BX                        -STORE IN AX                 
    
    
    JMP MUL_
    
    POP DX                         
    POP CX
    POP BX
    RET                             
    
TAKEINPUT1 ENDP 
```


### -this function   is responsible  to add last value into present value 

```
    ADD_: 

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
```

### - this part responsible to calculate discount and total price

```
   SUB_:


  
    MOV B,AX 
    
    LEA DX,PRESENT_PRICE                         
    MOV AH,9
    INT 21H
    
    
    XOR AX,AX                       
    
    MOV AX,B                        
    SUB A,AX                         
    
    
    MOV AX,A                        
    
    PUSH AX  
    
    ADD S,AX                         -CALCULATE FINAL TOTAL
    
    JMP OUTPUT
```

### - this part responsible to calculate peresent price

```

MUL_: 

   MOV B,AX             
    
    MOV BL,4
    MOV AH,9                         
    MOV AL,0  
    INT 10H 
    
    LEA DX,E_DISCOUNT                              -PRINT ENTER DISCOUNT STRING              
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        
    
    MOV AX,B
    
    MUL A                            
    
    PUSH AX                          
    
    MOV A,AX 
   
   JMP INPUT_SUB                    
    
    JMP OUTPUT  
```
 
 # part 5
 ## - This part will take the input of add and sub and convert it into digits to make calculations.
 ### -this code takes the present price to convert it to digits to add it into the last price.
 
 ```         
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
```

### - this code takes the discount to convert it to digits to subtract it from the price to give the present price. 
  
   ```
   INPUT_SUB: 

TAKEINPUT3 PROC
    
    PUSH BX                          
    PUSH CX
    PUSH DX
    
    
    
    XOR BX,BX                        
    
    XOR CX,CX                        
                    

    MOV AH,1                         
    INT 21H       
          
          
   ```        
# part 6
## - In this part there are two functions:
### - first part to display the output of the present price after the discount.
### - second part to display the total output price after the addition of all prices that the user asked for all the medicines he wanted.
### - end the program after the user does not want to request anything else.
