section .data
	i db 0
section .text
	GLOBAL _ft_bzero

_ft_bzero:
	cmp rdi, 0
	je fin
	mov rbx, rdi
	mov rax, rsi
while:
	cmp rax, 0
	je fin
	mov byte [rbx], 0
	inc rbx
	dec rax


	jmp while



fin:
	ret