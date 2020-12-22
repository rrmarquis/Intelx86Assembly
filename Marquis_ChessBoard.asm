;Programmed by: Roger Marquis
;INFO_2521_8A Intel Assembly Language
;Alan A Reinarz
;Chapter 8 Programming Exercise

INCLUDE Irvine32.inc

.data
MyStruct STRUCT
field1 WORD ?
field2 DWORD 20 DUP(?)
MyStruct ENDS

temp1 MyStruct <>
temp2 MyStruct <0>
temp3 MyStruct <, 20 DUP(0)>
array MyStruct 20 DUP(<>)


.code
main PROC
	mov ax,array.field1
	mov esi,OFFSET array
	add esi,3 * (TYPE myStruct)
	mov ax, (MyStruct PTR [esi]).field1
	mov ax,array.field1
	TYPE array.MyStruct
	SIZEOF array.MyStruct
	SIZEOF array.Mystruct.field2
END main