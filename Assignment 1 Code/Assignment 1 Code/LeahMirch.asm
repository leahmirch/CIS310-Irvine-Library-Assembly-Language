; Expression Calculation and using the Irvine Library
; Myname: Leah Mirch
; date: 10/03/23

INCLUDE Irvine32.inc

.data
    nameString BYTE "My name is: Leah Mirch", 0

.code
main PROC

    ; Initialize registers with values
    mov eax, 8000h      ; A = 8000h
    mov ebx, 2000h      ; B = 2000h
    mov ecx, 1000h      ; C = 1000h
    mov edx, 5000h      ; D = 5000h

    ; Calculation -   A = (A + B) - (C + D)
    add eax, ebx        ; A = A + B
    add ecx, edx        ; C = C + D
    sub eax, ecx        ; A = A - (C + D)

    ; Display the result EAX (A) on the screen
    mov edx, eax        ; Move the value of EAX into EDX for display
    call WriteDec       ; Display the result as decimal
    call Crlf           ; New line

    ; Dump the registers to screen
    call DumpRegs

    ; Display name
    mov edx, OFFSET nameString
    call WriteString
    call Crlf           ; New line

    ; Exit the program
    call WaitMsg
    call ExitProcess

main ENDP
END main