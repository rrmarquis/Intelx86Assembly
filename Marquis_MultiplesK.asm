;Programmed by: Roger Marquis
;INFO_2521_8A Intel Assembly Language
;Alan A Reinarz
;Chapter 5 Programming Exercise

TITLE Marquis_MultiplesK

INCLUDE Irvine32.inc

N = 50
.data
array BYTE N DUP(0)
K DWORD ?
.code
main PROC

    mov K, 2
    call multiplesOfK

    ;    re-initialize the array to zero
    MOV ECX, N
    L2:
        MOV BYTE PTR [ESI], 0
        ADD ESI, TYPE array
    LOOP L2
    mov K, 3
    call multiplesOfK

INVOKE ExitProcess,0
main ENDP

multiplesOfK PROC
    ; save all registers
    push ECX
    push ESI
    push EBX
    push EDX

    MOV ESI, OFFSET array
    MOV ECX, N        ; loop thorugh array
    MOV EDX, 1        ; compare array index 1 to 50
    MOV EBX, K        ; multiple of K
    L1:
        CMP EBX, EDX
        jne next

        ; multiple found
        MOV BYTE PTR [ESI], 1
        ADD EBX, K    ; next multiple of K

        next:
        INC EDX
        ADD ESI, TYPE array
    Loop L1

    ; retrieve all registers
    pop EDX
    pop EBX
    pop ESI
    pop ECX
    ret
multiplesOfK ENDP
END main