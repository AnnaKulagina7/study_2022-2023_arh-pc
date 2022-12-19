;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x ',0
div: DB 'Результат ',0
SECTION .bss
x: RESB 80
y: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
mov ebx, x
sub eax, 1
xor edx,edx
mov ebx, 3
mov ebx, 4
div ebx
add eax, 5

mov [y],eax

mov eax,div
call sprint
mov eax,[y]
call iprintLF
call quit
