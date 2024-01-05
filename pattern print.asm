.model small
.stack 100h

.data
    stars db '*', '*', '*', '*', '*', '*', '*', '*', '*', '$'
    xyz db '*', '*', '*', 'X', 'Y', 'Z', '*', '*', '*', '$'
    newline db 13, 10, '$' ; Carriage return (13), Line feed (10) followed by a dollar sign indicating the end of the string
    count dw 7 ; Counter for the outer loop

.code
main:
    mov ax, @data
    mov ds, ax

    ; Loop to print the pattern
    mov cx, 7 ; Total number of lines to print
    print_star_line:
        cmp cx, 4 ; Check if it's the line with "XYZ"
        je print_xyz_line

        mov si, offset stars ; Load the address of the stars pattern
        call print_line     ; Call the procedure to print the stars line
        jmp next_line

    print_xyz_line:
        mov si, offset xyz ; Load the address of the "XYZ" line
        call print_line     ; Call the procedure to print the "XYZ" line
        jmp next_line

    next_line:
        dec cx             ; Decrement the line counter
        jz end_prog        ; If the line counter is zero, end the program
        mov dx, offset newline ; Load newline string
        mov ah, 9          ; DOS function to display a string
        int 21h            ; Display newline string
        jmp print_star_line ; Continue printing lines

print_line:
    mov dx, si        ; Load the address of the line
    mov ah, 9         ; DOS function to display a string
    int 21h           ; Display the line
    ret

end_prog:
    mov ah, 4Ch       ; DOS function to exit program
    int 21h           ; Call DOS to exit

end main
