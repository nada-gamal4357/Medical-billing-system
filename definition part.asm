
;This part of our project is definition of variables ,which we used in our project




.model small

.stack 100h

.data
   
   input_password db 'Please Enter Your Password$'
   password db 'qwerty$'
   incorrect_password db 10,13, 'Incorrect Password$'    
   welcome db 10,13,10,13, 'WELCOME TO MEDICAL STORE$'
   msg1 db 10,13,10,13, 'Choose a Option$'
   msg2 db 10,13,10,13, 'What Do You Want To Buy$'
   msg_medicines db 10,13, 'Press 1 to buy medicines$'
   medicines_sold db 10,13, 'Press 2 to see medicines statistics$'
   input_again db 10,13, 'Please Press one of the above given keys$'
   wrong_input db 10,13, 'Wrong Input$'
   exit_program db 10,13,'Press 4 to exit$'
   opt1 db 10,13, '1. Panadol (( 4EGP )) $'
   opt2 db 10,13, '2. Paracetamol  (( 3EGP )) $'
   opt3 db 10,13, '3. Cleritek  (( 2EGP )) $'
   opt4 db 10,13, '4. Aspirin (( 2EGP )) $'
   opt5 db 10,13, '5. Brufen ((  1EGP ))  $'
   opt6 db 10,13, '6. Surbex Z ((  5EGP  )) $'
   opt7 db 10,13, '7. Arinac ((  4EGP )) $'
   opt8 db 10,13, '8. Sinopharm Vaccine  ((  2EGP )) $'
   opt9 db 10,13, '9. Pfizer Vaccine (( 8EGP )) $'
   newLine db 10,13, '$'     
   msg_panadol db 10,13, 'How many panadols do you want to buy$'
   msg_paracetamol db 10,13, 'How many paracetamol do you want to buy$'
   msg_cleritek db 10,13, 'How many cleritek do you want to buy$'
   msg_aspirin db 10,13, 'How many aspirin do you want to buy$'
   msg_brufen db 10,13, 'How many brufen do you want to buy$'
   msg_surbex db 10,13, 'How many subex do you want to buy$'
   msg_arinac db 10,13, 'How many arinac do you want to buy$'
   msg_sinopharm db 10,13, 'How many Sinopharm Vaccine do you want to buy$'
   msg_pfizer db 10,13, 'How many Pfizer Vaccine do you want to buy$'
   total_msg dw 'Total Earned= $'
   price_panadol dw 4
   price_paracetamol dw 3
   price_cleritek dw 2    
   price_aspirin dw 2
   price_brufen dw 1
   price_surbex dw 5    
   price_arinac dw 4
   price_sinopharm dw 2
   price_pfizer dw 8    
   amount_earned db 10,13,'Amount earned= $'
   amount db 0
   amount_print db 10,13,'Press 3 to show amount earned today$'
   panadol_sold db 0
   paracetamol_sold db 0
   cleritek_sold db 0
   aspirin_sold db 0
   brufen_sold db 0
   surbex_sold db 0
   arinac_sold db 0
   sinopharm_sold db 0
   pfizer_sold db 0
   
   panadol_print db 10,13, 'Panadols sold = $'
   pfizer_print db 10,13, 'Pfizer Vaccine sold = $'
   sinopharm_print db 10,13, 'Sinopharm Vaccine sold = $'
   arinac_print db 10,13, 'Arinac sold = $'
   surbex_print db 10,13, 'Surbex sold = $'
   aspirin_print db 10,13, 'Aspirin sold = $'
   brufen_print db 10,13, 'Brufen sold = $'
   cleritek_print db 10,13, 'Cleritek sold = $'
   paracetamol_print db 10,13, 'Paracetamol sold = $'
    


