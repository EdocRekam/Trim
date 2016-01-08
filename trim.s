global _main
extern MessageBoxA
extern ExitProcess

section code use64 class=code
_main:        
        mov     rcx, 0       ; hWnd
        mov     rdx, banner  ; lpText
        mov     r8, title    ; lpCaption
        mov     r9, 0        ; uType              
        sub     rsp, 40      ; Allocate stack
	call	MessageBoxA        
        mov     ecx,eax      ; Move MessageBoxA result to ExitProcess Input;
	call	ExitProcess

section data use64 class=data
	banner:	db 'Trim from assembler!', 0
	title:	db 'Trim', 0
