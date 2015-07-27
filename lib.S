.text
.global my_print
.global generic_syscall

	
my_print:
# Should write this in assembly
# First load all the arguments into registers
# Do the "write" system call
# Check the value returned by kernel and return 

	
	# load arguments here
	
	
	
	push  %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl $1,%ebx
	movl $4,%eax
	
      #  mov     0(%esp), %eax         #system call number for "write"
	#ret
	# read about the "write" system call (man 2 read)
	int     $0x80           #call kernel
	pop %ebp
	# read about how arguments are passed for system calls
	# read about how arguments are passed from C language 
	cmp %edx,%eax
	jne error
	
	movl $0,%eax
		ret
		
	
	# check the return value
	# what does wirte return?
	# what should this function return?
	# how can you make a decision?

error:	
	movl	$-1, %eax	
        ret                     #returns

		

generic_syscall:

	push %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	int $0x80
	pop %ebp
		ret
