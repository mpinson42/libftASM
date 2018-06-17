section .data
	i dd 0
section .text
	GLOBAL _ft_strlen

_ft_strlen:
	
	push rdi
    mov     rax, 0
    mov     rcx, -1
    cld
    repne scasb
    mov     rax, -2
    sub     rax, rcx



fin:
	pop rdi
	ret