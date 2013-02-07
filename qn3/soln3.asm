
;Author    :  Neenu M                                                         
;Date      :  05/02/2013                                                     
;Filename  :  soln3.asm                                                      
;Program   :  This is a simple program that receives the age of a person as input and
;              outputs whether the person is eligible for voting or not.(Assume minimum voting
;              age as 18)                             



section .data
   
   message1: db 'Enter your age',10,0   
   formatin: db "%d", 0               
   integer1: times 4 dd 0             
   message2:db 'Eligible for voting',10,0
   message3:db 'Not Eligible for voting',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp 
   mov ebp,esp 
   push message1
   call printf
   add esp, 4 ; remove parameters
   push integer1 ; address of integer1 (second parameter)
   push formatin ; arguments are right to left (first parameter)
   call scanf
   mov eax,[integer1]
   cmp eax,[age]
   jge l1
   push message3
   call printf
   jmp finish


   l1:

    push message2
    call printf
    jmp finish

   finish:

     mov esp,ebp
     pop ebp
     ret



