;Programmed by: Roger Marquis
;INFO_2521_8A Intel Assembly Language
;Alan A Reinarz
;Chapter 4 Programming Exercise

TITLE Marquis_Fibonacci	

INCLUDE Irvine32.inc

Examp PROC,
	one:DWORD, two:DWORD
	mov eax, one
	mov ebx,[ebp+12]
	call DumpREgs
	ret
Examp ENDP