section .data

        msg db 'Hello world!!!', 0xa, 0xd
        len equ $ - msg
        
section .text

		global _start
		
_start:

		;Output text
		
		mov eax, 4	;number system call sys_write
		mov ebx,1	;file descriptor stdout
		mov ecx, msg;my string
		mov edx, len;string length
		
		int 0x80
		
		;code for exit from program
		
		mov eax, 1	;system call sys_exit  
		mov ebx, 0	;error code
		
		int 0x80
