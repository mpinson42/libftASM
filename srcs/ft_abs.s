section .text
    global _ft_abs

_ft_abs:
	mov rax, rdi
	cmp eax, 0				
	jl neg				
	ret

neg:
	sub rax, rdi
	sub rax, rdi
	ret