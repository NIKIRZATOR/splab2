.data
hello_str:
.string "Привет мир\n"
.set hl, .-hello_str - 1
.text
.globl main
.type main, @function

main:
movl $4, %eax
movl $1, %ebx
movl $hello_str, %ecx
movl $hl, %edx


int $0x80
movl $1, %eax
movl $0, %ebx
int $0x80

.size main, . - main
