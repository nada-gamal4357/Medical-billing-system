
;This part of our project is definition of variables ,which we used in our project


.MODEL SMALL
.STACK 100H
.DATA       

;DECLARED STRINGS

INTRO DB '************************* Medical Billing Store *****************************$',10,13

                              

ENTER DB 10,13,'PLEASE ENTER THE KEYS WHAT YOU WANT TO BUY: $'

INFO DB 10,13,'KEYS     ITEMS                PRICE$'

CS_MALE DB 10,13,' 1       Panadol              10EGP $'
                          
FS_MALE DB 10,13,' 2       Paracetamol          15EGP $'
                        
PANT_MALE DB 10,13,' 3       Cleritek             13EGP $'

M_SHOES DB 10,13,' 4       Aspirin              12EGP $'

CS_FEMALE DB 10,13,' 5       Brufen               19EGP $'

PANT_FEMALE DB 10,13,' 6       Surbex               20EGP $'

F_SHOES DB 10,13,' 7       Arinac               16EGP $'

PANJABI DB 10,13,' 8       Sinopharm Vaccine    22EGP $'
                                                    
KURTI DB 10,13,' 9       Pfizer Vaccine       28EGP $'

E_QUANTITY DB 10,13,'ENTER QUANTITY: $'

AGAIN DB 10,13,'DO YOU WANT TO BUY MORE? (1.YES || 2.NO): $'

ER_MSG DB 10,13,'ERROR INPUT$'  

CHOICE DB 10,13,'ENTER YOUR CHOICE:$'    

FT DB 10,13,'TOTAL AMOUNT IS :$' 
 
ERR DB 0DH,0AH,'WRONG INPUT! START FROM THE BEGINNING $'   

ERR2 DB 0DH,0AH,'WRONG INPUT.PRESS Y/Y OR N/N $' 

R DB 0DH,0AH,'PRESENT AMOUNT IS : $' 

E_DISCOUNT DB 10,13,'ENTER DISCOUNT(IF NOT AVAILABLE ENTER 0 ): $' 

ERASK DB 10,13,'START FROM THE BEGINNING $'

EN_DIS DB 10,13,'AGAIN ENTER DISCOUNT: $'

A DW ?                           ;DECALRED VARIABLES
B DW ?
C DW ?
S DW 0,'$'
                                 
NL DB 0DH,0AH,'$'                ;NEW LINE




