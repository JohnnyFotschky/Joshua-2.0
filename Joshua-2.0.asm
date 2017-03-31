; ----------------------------------------------------------------------------------------
; Writes a message to Professor Reed to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
; nasm -felf64 Joshua-2.0.asm && ld Joshua-2.0.o
; ./Joshua-2.0
; ----------------------------------------------------------------------------------------

        global  _start

        section .text
_start:
        ; write(1, message, 13)
        mov     rax, 1                  ; system call 1 is write
        mov     rdi, 1                  ; file handle 1 is stdout
        mov     rsi, message            ; address of string to output
        mov     rdx, 232                ; number of bytes (this gives me room for newlines / next line
        syscall                         ; invoke operating system to do the write

        ; exit(0)
        mov     eax, 60                 ; system call 60 is exit
        xor     rdi, rdi                ; exit code 0
        syscall                         ; invoke operating system to exit
message:
        db      "Greetings Professor Reed", 10	; note the newline at the end
	db	"", 10				; next line
	db	"Shall we play a game?", 10	; next line
	db	"", 10				; next line
	db	"Chess", 10			; next line
	db	"Poker", 10			; next line
	db	"Fighter Combat", 10		; next line
	db	"Guerrilla Engagement", 10	; next line 
	db	"Desert Warfare", 10		; next line
	db	"Air-To-Ground Actions", 10	; next line
	db	"Theaterwide Tactical Warfare", 10	; next line
	db	"Theaterwide Biotoxic and Chemical Warfare", 10	; next line
	db	"", 10				; next line
	db	"Global Thermonuclear War", 10	; end line
