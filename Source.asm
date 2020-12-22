; Programmed by Roger Marquis
; INFO 2531 8A
; Reinarz

INCLUDE Irvine32.inc

ScreenSize = 100 * 30; rows * cols

.data

.code
main PROC

call ClrScr
call Randomize; random number generator
mov ecx, ScreenSize

L1 : call ChooseColor
	call SetTextColor
	call ChooseCharacter
	call WriteChar
	loop L1

	mov dx, 0
	call Gotoxy

	exit
	main ENDP

	; 50 % probability color will be red.

	ChooseColor PROC
	mov eax, 99; range of random numbers(0 - 99)
	call RandomRange
	.IF eax >= 50; 50 %
	mov eax, red
	.ELSE
	inc eax
	.ENDIF

	ret
	ChooseColor ENDP

	ChooseCharacter PROC

	mov eax, 0FFh - 1Fh; range of characters
	call RandomRange
	add eax, 1Fh

	ret
	ChooseCharacter ENDP
	END main

	END main