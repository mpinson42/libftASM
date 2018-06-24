section .data
	i dd 0
section .text
	GLOBAL _ft_strcat
	extern _ft_strlen
_ft_strcat:
	call _ft_strlen
	mov r11, rdi
	mov r8, rax
	add rdi, r8

	mov rbx, rdi
	mov rdi, rsi
	call _ft_strlen
while:
	cmp rax, 0
	je fin

	mov r10, [rsi]
	mov [rbx], r10b

	
	inc rsi
	inc rbx
	dec rax
	jmp while
	



fin:
	mov r10, 0
	mov [rbx], r10b
	mov rax, r11
	ret