# Medical-billing
'''
.model small
'''
##Define the model of the program 
(Small-medium-compact-large-huge)
'''
.stack 100H
'''
##To store 100 byte for stack 
'''
.data
'''
.data segment (64k)
Define the variables and tell the operating system with it 
DB : Define single byte 
DW : Define word
DD : Define Double 
DQ : Define quadword  ( 8 Bytes ) unsupported in emulator
DT : Define TEN (10 Bytes ) unsupported in emulator
 Structure of definition of variables
Name of the variable.                  Type of the variable.              Initialization 
