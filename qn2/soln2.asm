
;Author     :  Neenu M                                                         ;
; Date      :   05/02/2013                                                     ;
; Filename  :   soln2.asm                                                      ;
; Program   :  This program is to print Hello World! using systemcall.                              ;

section .data
      
        hello: db 'Hello World!',10  ; msg to be printed in a new line.
        hellolen:  equ $-hello       ; len of msg

section .text
      
       global main

main:

      mov eax,4                       ;write system call
      mov ebx,1                       ;to output the string 
      mov ecx,hello                   ;put the limit of hello to ecx
      mov edx,hellolen                ;length of the message to be printed passed as argument
      int 80h			      ; kernel call
      mov eax,1                       ;sys_exit
      mov ebx,0                       ;no error
      int 80h



	
