section .data
	i dd 0
section .text
	GLOBAL _ft_memcpy

_ft_memcpy:
	
	push rdi
    mov     rcx, rdx
    cld
    rep movsb



fin:
	pop rax
	ret