
.MODEL SMALL
.STACK 100H
.DATA       

;DECLARED STRINGS

INTRO DB '******************** Medical Billing Online System ************************$',10,13
                           

ENTER DB 10,13,'PLEASE ENTER THE CODE WHAT YOU WANT TO BUY: $'

INFO DB 10,13,'Code     Medicines            Price$'

panadol DB 10,13,' 1       Panadol              10EGP $'
                          
Paracetamol DB 10,13,' 2       Paracetamol          15EGP $'
                        
Cleritek DB 10,13,' 3       Cleritek             13EGP $'

Aspirin DB 10,13,' 4       Aspirin              12EGP $'

Brufen DB 10,13,' 5       Brufen               19EGP $'

Surbex DB 10,13,' 6       Surbex               20EGP $'

Arinac DB 10,13,' 7       Arinac               16EGP $'

Sinopharm  DB 10,13,' 8       Sinopharm            22EGP $'
                                                    
Pfizer  DB 10,13,' 9       Pfizer               28EGP $'

E_QUANTITY DB 10,13,'ENTER QUANTITY: $'

AGAIN DB 10,13,'DO YOU WANT TO BUY MORE? (1.YES || 2.NO): $'

ER_MSG DB 10,13,'ERROR INPUT$'  

CHOICE DB 10,13,'ENTER YOUR CHOICE:$'    

TOTAL_PRICE DB 10,13,'TOTAL PRICE IS :$' 
 
ERR DB 10,13,'WRONG INPUT! START FROM THE BEGINNING $'   
 

PRESENT_PRICE DB 10,13,'PRESENT PRICE IS : $' 

E_DISCOUNT DB 10,13,'ENTER DISCOUNT(IF NOT AVAILABLE ENTER 0 ): $' 

ERASK DB 10,13,'START FROM THE BEGINNING $'

EN_DIS DB 10,13,'AGAIN ENTER DISCOUNT: $'

A DW ?                           ;DECALRED VARIABLES
B DW ?
C DW ?
S DW 0
                                 
NL DB 10,13,'$'                ;NEW LINE
 

.CODE
  
     MOV AX, @DATA               
     MOV DS, AX     
     
     
     LEA DX,INTRO                ;PRINT INTRO STRING 
     MOV AH,9
     INT 21H
       
          
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H       

     JMP BEGINTOP                ;GO TO BEGINTOP LEBEL WHERE USER WILL GIVE INPUT 

 ERRORINPUT:  
                  
     LEA DX,ER_MSG               ;PRINT ERROR MESSAGE 
     MOV AH,9
     INT 21H 
                                 ;IF USER GIVES AN ERROR THEN USER WILL BE ASKED TO INPUT AGAIN
     LEA DX,ERASK
     MOV AH,9
     INT 21H
                

 BEGINTOP:   
 
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
    
                                 
     MOV BL,10                   ;COLOR CODE
     MOV AH,9 
     MOV AL,0  
     INT 10H                
      
     LEA DX,INFO                 ;PRINT INFO STRING
     MOV AH,9 
     INT 21H                     
     
     MOV BL,11                   ;COLOR CODE
     MOV AH,9 
     MOV AL,0  
     INT 10H   
   
        

     LEA DX,Panadol              ;PRINT Panadol STRING
     MOV AH,9
     INT 21H 
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H

                  
     LEA DX,Paracetamol          ;PRINT Paracetamol STRING
     MOV AH,9
     INT 21H  
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Cleritek             ;PRINT Cleritek STRING
     MOV AH,9
     INT 21H    
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Aspirin              ;PRINT Aspirin STRING
     MOV AH,9
     INT 21H   
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Brufen               ;PRINT Brufen STRING
     MOV AH,9
     INT 21H  
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
                   
     LEA DX,Surbex               ;PRINT Surbex STRING
     MOV AH,9
     INT 21H 
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
     LEA DX,Arinac               ;PRINT Arinac STRING
     MOV AH,9
     INT 21H    
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
      
     LEA DX,Sinopharm            ;PRINT Sinopharm   STRING
     MOV AH,9       
     INT 21H    
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
     
      
     LEA DX,Pfizer               ;PRINT Pfizer  STRING
     MOV AH,9       
     INT 21H    
     
     LEA DX,NL                   ;PRINT A NEW LINE
     MOV AH,9
     INT 21H
            
     LEA DX,ENTER                ;PRINT ENTER STRING
     MOV AH,9       
     INT 21H    
        
     
     MOV AH,1                    ;TAKE AN INPUT & SAVED TO AL
     INT 21H 
     
                                 
     CMP AL,49                   ;IF AL=1 GO TO Panadol LEBEL
     JE Pana_dol
     
     CMP AL,50                   ;IF AL=2 GO TO Paracetamol LEBEL
     JE Paraceta_mol
     
     CMP AL,51                   ;IF AL=3 GO TO Cleritek LEBEL
     JE Cleri_tek
     
     CMP AL,52                   ;IF AL=4 GO TO Aspirin LEBEL
     JE Aspi_rin
     
     CMP AL,53                   ;IF AL=5 GO TO Brufen LEBEL
     JE Bru_fen
     
     CMP AL,54                   ;IF AL=6 GO TO Surbex LEBEL
     JE Sur_bex
     
     CMP AL,55                   ;IF AL=7 GO TO Arinac LEBEL
     JE Ari_nac
     
     CMP AL,56                   ;IF AL=8 GO TO Sinopharm LEBEL
     JE Sino_pharm 
     
     CMP AL,57                   ;IF AL=9 GO TO Pfizer LEBEL
     JE Pfi_zer 
     
    
     
      JMP  ERRORINPUT                ;IF WRONG KEYWORD IS PRESSED THEN THE MEDICINESLIST WILL SHOW AGAIN 
 
   
Pana_dol:
                                 
MOV A,10                        ;PRICE OF Panadol IS MOVED TO A WHERE PRICE IS 10

JMP QUANTITY

Paraceta_mol:

MOV A,15                       ;PRICE OF Paracetamol IS MOVED TO A WHERE PRICE IS 15

JMP QUANTITY 

Cleri_tek:

MOV A,13                        ;PRICE OF Cleritek IS MOVED TO A WHERE PRICE IS 13

JMP QUANTITY 

Aspi_rin: 

MOV A,12                        ;PRICE OF Aspirin IS MOVED TO A WHERE PRICE IS 12

JMP QUANTITY 

Bru_fen: 

MOV A,19                        ;PRICE OF Brufen IS MOVED TO A WHERE PRICE IS 19

JMP QUANTITY 

Sur_bex:

MOV A,20                        ;PRICE OF Surbex IS MOVED TO A WHERE PRICE IS 20

JMP QUANTITY 

Ari_nac:   

MOV A,16                        ;PRICE OF Arinac IS MOVED TO A WHERE PRICE IS 16

JMP QUANTITY 


Sino_pharm:   

MOV A,22                        ;PRICE OF Sinopharm IS MOVED TO A WHERE PRICE IS 22

JMP QUANTITY 

Pfi_zer:      

MOV A,28                        ;PRICE OF Pfizer IS MOVED TO A WHERE PRICE IS 28

JMP QUANTITY 

;AFTER MOVING PRICE PROGRAM WILL JUMP TO QUANTITY LEBEL    

QUANTITY:  

    MOV BL,6 
    MOV AH,9                     ;COLOR CODE
    MOV AL,0  
    INT 10H

    LEA DX,E_QUANTITY            ;PRINT ENTER QUANTITY STRING
    MOV AH,9
    INT 21H 
    
    JMP MULTI                     ;PROGRAM WILL GO TO MULTI LEBEL WHERE THE PRICE WILL BE MILTIPLIED WITH THE AMOUNT


ASK: 

    MOV BL,11                     ;COLOR  CODE
    MOV AH,9 
    MOV AL,0  
    INT 10H
    
    LEA DX,AGAIN                 ;PRINT AGAIN IF USER WANTS TO BUY MORE
    MOV AH,9
    INT 21H 
    
    MOV AH,1                     ;TAKES THE INPUT OF YES OR NO
    INT 21H
    
    CMP AL,49                    ;IF YES, THEN AGAIN GO TO MEDICINESLIST MENU AND BUY AGAIN
    JE BEGINTOP
    
    CMP AL,50
    JE OUTPUT2                   ;IF NO, PROGRAM WILL GIVE THE TOTAL OUTPUT
    
    LEA DX,ER_MSG
    MOV AH,9                     ;IF ANY WRONG INPUT, PRINT ERROR MESSAGE AND AGAIN ASK TO BUY AGAIN
    INT 21H
    
    JMP ASK                      
    


ERROR:
    
    LEA DX,ER_MSG                ;PRINT ERROR MESSAGE 
    MOV AH,9
    INT 21H
    
    JMP QUANTITY                 ;JUMP TO QUANTITY LEBEL
    
ER_DISCOUNT:   

    LEA DX,ER_MSG                ;DURING DISCOUNT INPUT IF WRONG INPUT IS PRESSES ERROR MESSSAGE WILL SHOW
    MOV AH,9
    INT 21H
    
    LEA DX,NL                    ;PRINT NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,EN_DIS                ;PRINT AGAIN INPUT DISCOUNT VALUE 
    MOV AH,9
    INT 21H
    
    JMP INPUT_SUB                ;JUMP TO INPUT OF DISCOUNT 
 
    
MULTI:         

    MOV BL,11                       ;COLOR CODE
    MOV AH,9 
    MOV AL,0  
    INT 10H    

TAKEINPUT1 PROC                    ;TAKEINPUT1 TAKES QUANTITY AND CONVERT IT TO DIGIT 
    
    PUSH BX                        ;TAKE VALUES INTO STACK 
    PUSH CX
    PUSH DX

    
    
    XOR BX,BX                       ;CLEAR
    
    XOR CX,CX                       ;CLEAR
                    
    
    MOV AH,1                        ;TAKE CHARACTER IN AL
    INT 21H


    
    CONVDIGIT1: 
                                     
    CMP AL,48                       ;IF AL<0, PRINT ERROR MESSAGE
    JL ERROR
    
    CMP AL,57                       ;IF AL>9, PRINT ERROR MESSAGE 
    JG ERROR


    AND AX,00FH                     ;CONVERT TO DIGIT
    PUSH AX                         ;SAVE ON STACK
    
    MOV AX,10                       ;PUT AX=10
    MUL BX                          ;AX=TOTAL * 10
    POP BX                          ;GET DIGIT BACK
    ADD BX,AX                       ;TOTAL = TOTAL X 10 +DIGIT
    
    
    MOV AH,1
    INT 21H
    
    CMP AL,13                      
    JNE CONVDIGIT1                 
    
    MOV AX,BX                       ;STORE IN AX
    
    
    JMP MUL_
    
    POP DX                          ;RESTORE REGISTERS
    POP CX
    POP BX
    RET                             ;AND RETURN
    
    

TAKEINPUT1 ENDP                      ;END OF TAKEINPUT1 


ADD_:                                


;ADD FUNCTION IS USED TO ADD LAST VALUE INTO PRESENT VALUE 


;SECOND VALUE STORED IN B


    MOV B,AX  
    
    MOV BL,4                         ;COLOR CODE
    MOV AH,9 
    MOV AL,0  
    INT 10H 
    
    
    XOR AX,AX                        ;CLEAR AX
    
    MOV AX,B                         ;MOV B TO AX
    ADD A,AX                         ;ADD A WITH AX
    
    
    MOV AX,A                         ;MOV A TO AX
    
    PUSH AX                          ;TAKE AX INTO STACK
    
    
    JMP END

         
     
SUB_:


;SUB LABEL FOR DISCOUNT 


;SECOND VALUE STORED IN B
        
    
    MOV B,AX 
    
    LEA DX,PRESENT_PRICE             ;PRINT PRESENT PRICE STRING
    MOV AH,9
    INT 21H
    
    
    XOR AX,AX                        ;CLEAR AX
    
    MOV AX,B                         ;MOV B TO AX
    SUB A,AX                         ;SUBSTRACT AX FROM A
    
    
    MOV AX,A                         ;MOV A TO AX
    
    PUSH AX  
    
    ADD S,AX                         ;CALCULATE FINAL TOTAL
    
    JMP OUTPUT

MUL_:
 
;TO CALCULATE PRESENT PRICE

;SECOND VALUE STORED IN B


    MOV B,AX             
    
    MOV BL,4
    MOV AH,9                         ;COLOR CODE
    MOV AL,0  
    INT 10H 
    
    LEA DX,E_DISCOUNT                ;PRINT ENTER DISCOUNT STRING
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        ;CLEAR AX
    
    MOV AX,B
    
    MUL A                            ;MULTIPLY A WITH AX
    
    
    PUSH AX                          ;TAKE AX INTO STACK
    
    MOV A,AX 
   
                                     
    JMP INPUT_SUB                    ;JUMP TO INP1UT_SUB
    
    
    
    JMP OUTPUT  
    
    
 INPUT_ADD: 

TAKEINPUT2 PROC                      ;TAKEINPUT2 PROC IS FOR ADDING THE PRESENT PRICE INTO TOTAL 
    
    PUSH BX                          ;TAKE THE VALUES IN STACK
    PUSH CX
    PUSH DX
    
        
    BEGIN1:
    
    
    XOR BX,BX                        ;HOLDS TOTAL
    
    XOR CX,CX                        ;SIGN
                    
    
    MOV AH,1                         ;TAKE CHARACTER IN AL
    INT 21H

    
    CONVDIGIT2: 
                                     ;IF AL<0, PRINT ERROR MESSAGE
    CMP AL,48
    JL ERROR
    
    CMP AL,57                        ;IF AL>9, PRINT ERROR MESSAGE
    JG ERROR


    AND AX,00FH                      ;CONVERT TO DIGIT
    PUSH AX                          ;SAVE ON STACK
    
    MOV AX,10                        ;GET 10
    MUL BX                           ;AX=TOTAL * 10
    POP BX                           ;GET DIGIT BACK
    ADD BX,AX                        ;TOTAL = TOTAL X 10 +DIGIT
    
    
    MOV AH,1                         ;TAKE VALUE INTO AL
    INT 21H
    
    CMP AL,0DH                       ;CARRIAGE RETURN
    JNE CONVDIGIT2                   ;NO KEEP GOING
    
    MOV AX,BX                        ;STORE IN AX
                         
    
    JMP ADD_                         ;JUMP TO ADD_ TO STORE THE TOTAL VALUE
    
    POP DX                           ;RESTORE REGISTERS
    POP CX
    POP BX
    RET                              ;AND RETURN
    
    

TAKEINPUT2 ENDP   

INPUT_SUB: 

TAKEINPUT3 PROC
    
    PUSH BX                          ;SAVE TO STACK 
    PUSH CX
    PUSH DX
    
    
    
    XOR BX,BX                        ;CLEAR
    
    XOR CX,CX                        ;CLEAR
                    

    MOV AH,1                         ;CHAR IN AL
    INT 21H
    
    
    
    CONVDIGIT3: 
    
    CMP AL,48                        ;IF AL<0, PRINT ERROR MESSAGE 
    JL ER_DISCOUNT
    
    CMP AL,57                        ;IF AL>9, PRINT ERROR MESSAGE 
    JG ER_DISCOUNT


    AND AX,00FH                      ;CONVERT TO DIGIT
    PUSH AX                          ;SAVE ON STACK
    
    MOV AX,10                        ;AX=10
    MUL BX                           ;AX=TOTAL * 10
    POP BX                           ;GET DIGIT BACK
    ADD BX,AX                        ;TOTAL = TOTAL X 10 +DIGIT
    
    
    MOV AH,1
    INT 21H
    
    CMP AL,0DH                       ;CARRIAGE RETURN
    JNE CONVDIGIT3                   ;NO KEEP GOING
    
    MOV AX,BX                        ;STORE IN AX
    
    OR CX,CX                         
    
    
    JMP SUB_

    POP DX                           ;RESTORE REGISTERS
    POP CX
    POP BX
    RET                              ;AND RETURN
                            


TAKEINPUT3 ENDP 

OUTPUT:         
;OUTDEC PROC IS FOR GIVING THE OUTPUT OF THE PRESENT AMOUNT


CONVCHAR1 PROC
    
    
    PUSH AX                          ;SAVE REGISTERS
    PUSH BX
    PUSH CX
    PUSH DX
    
    XOR CX,CX                        ;CX COUNTS DIGITS
    MOV BX,10                        ;BX HAS DIVISOR
    
    REPEAT1:
    
    XOR DX,DX                        ;PREP HIGH WORD
    DIV BX                           ;AX = QUOTIENT, DX=REMAINDER
    
    PUSH DX                          ;SAVE REMAINDER ON STACK
    INC CX                           ;COUNT = COUNT +1
    
    OR AX,AX                         ;QUOTIENT = 0?
    JNE REPEAT1                      
    
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

    LEA DX,TOTAL_PRICE               ;PRINT FINAL TOTAL
    MOV AH,9
    INT 21H
    
    XOR AX,AX                        ;CLEAR AX
    
    MOV AX,S                         ;SET AX INTO 0
    
    
;CONVCHAR2 IS TO CONVERT TOTAL OUTPUT OF THE AMOUNT TO CHARACTER TO DISPLAY ON SCREEN
    
                                     
CONVCHAR2 PROC
    
    
    PUSH AX                         ;SAVE REGISTERS
    PUSH BX
    PUSH CX
    PUSH DX

    XOR CX,CX                       ;CX COUNTS DIGITS
    MOV BX,10                       ;BX HAS DIVISOR
    
    REPEAT12:
    
    XOR DX,DX                        ;CLEAR DX
    DIV BX                           ;AX = QUOTIENT, DX=REMAINDER
    
    PUSH DX                          ;SAVE REMAINDER ON STACK
    INC CX                           ;COUNT = COUNT +1
    
    OR AX,AX                         ;QUOTIENT = 0?
    JNE REPEAT12                     
    
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
 

     
END:                                 ;EXIT FROM THE PROGRAM
MOV AH, 4CH                  
INT 21H





