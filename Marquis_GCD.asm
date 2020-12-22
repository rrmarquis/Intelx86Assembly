;Programmed by: Roger Marquis
;INFO_2521_8A Intel Assembly Language
;Alan A Reinarz
;Chapter 7 Programming Exercise

TITLE Marquis_GCD	

Include Irvine32.inc

.data
	array SDWORD -8,-48,55,121,90,45,49,63,36,72
	string byte "The Greatest common divisor is: ",0

.code
main PROC

	mov ecx, LENGTHOF array /2
	mov esi, OFFSET array
L1:
	mov  edi,2

L2:
	mov eax,[esi]
	add esi,4
	cmp eax,0
	jl L3
	jmp L4

L3:
	neg eax

L4:
	push eax
	dec edi
	cmp edi,0

	jne L2

	call gcd
	mov edx, offset string
	call writestring
	call writedec
	call crlf
	loop l1

	 exit
main ENDP

gcd proc
	pop edi
	pop eax
	pop ebx

gcd1:
	mov edx,0
	div ebx
	mov eax,ebx
	mov ebx,edx
	cmp ebx,0
	jg gcd1
	push edi
	ret

gcd endp 

END main