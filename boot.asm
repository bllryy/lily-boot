bits 16
org 0x7c00

mov si, 0

print:
	mov ah, 0x0e
	mov al, [test + si]
	int 0x10
	add si, 1
	cmp byte [test + si], 0
	jne print

jmp $

test:
	db "test", 0

times 510 - ($ - $$) db 0
dw 0xAA55
