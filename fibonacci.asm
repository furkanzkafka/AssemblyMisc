# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
.data
.text
.global main
.p2align 4,0x90 # 16-byte boundry
main:
	pushq %rbp
	movq %rsp,%rbp
	pushq %r14
	pushq %rbx
	movq %rdi, %rbx
	cmpq $2, %rbx # if n<2 return n
	jge LBB0_1
	movq %rbx, %rax
	jmp LBB0_2
LBB0_1:  # return (fib(n-1) + fib(n-2))
    leaq -1(%rbx),%rdi 
    callq main
    movq %rax, %r14
    addq $-2, %rbx
    movq %rbx, %rdi
    callq main
    addq %r14, %rax
LBB0_2:
    popq %rbx
    popq %r14
    popq %rbp
    retq
