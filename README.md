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
```
