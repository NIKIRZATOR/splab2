.data

print_format:
.string "%d "

array:
.long 65280, 65320, 65323, 65535, 65532, 49407, 49311, 49297, 49393, 49201
array_end:

.text
.global main
.type main, @function

main:
movl $array, %ebx
movl $255, %eax

modify:
xor %eax, (%ebx)
addl $8, %ebx
cmpl $array_end, %ebx
jg next
jne modify

next:
movl $array, %ebx

print_new_arr:
pushl (%ebx)
pushl $print_format
call printf
addl $8, %esp

addl $4, %ebx
cmpl $array_end, %ebx
jne print_new_arr

ret 
