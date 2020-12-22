; Writing Text Colors              (WriteColors.asm)

; Demonstration of WriteConsoleOutputCharacter,
; and WriteConsoleOutputAttribute functions.

INCLUDE Irvine32.inc
INCLUDE Macros.inc

mMult32 MACRO op1, op2, prod
	push eax
	mov eax,op1
	mul op2
	mov prod,eax
	pop eax
ENDM

.data

val1 DWORD 10
val2 DWORD 100
 product DWORD ?


.code
main PROC

mMult32 val1, val2,  product
mov eax,  product
mShow val1, D
mShow val2, D
mShow  product, D

exit
main ENDP
END main