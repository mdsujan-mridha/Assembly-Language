.model small
.stack 100h
.data
    num1 db 6  ; First number
    num2 db 2  ; Second number
    result dw ? ; Variable to hold the result

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Addition: 6 + 2
    mov al, num1
    add al, num2
    mov result, ax  ; Storing the addition result

    ; Display Addition Result
    mov dl, '6'    ; Display first number
    mov ah, 02h
    int 21h

    mov dl, '+'    ; Display addition symbol
    int 21h

    mov dl, '2'    ; Display second number
    int 21h

    mov dl, '='    ; Display equals sign
    int 21h

    mov ax, result ; Display addition result
    add ax, '0'
    mov dl, ah
    int 21h
    mov dl, 10     ; Move to next line
    int 21h

    ; Subtraction: 6 - 2
    mov al, num1
    sub al, num2
    mov result, ax  ; Storing the subtraction result

    ; Display Subtraction Result
    mov dl, '6'    ; Display first number
    mov ah, 02h
    int 21h

    mov dl, '-'    ; Display subtraction symbol
    int 21h

    mov dl, '2'    ; Display second number
    int 21h

    mov dl, '='    ; Display equals sign
    int 21h

    mov ax, result ; Display subtraction result
    add ax, '0'
    mov dl, ah
    int 21h
    mov dl, 10     ; Move to next line
    int 21h

    ; Multiplication: 6 * 2
    mov al, num1
    mul num2
    mov result, ax  ; Storing the multiplication result

    ; Display Multiplication Result
    mov dl, '6'    ; Display first number
    mov ah, 02h
    int 21h

    mov dl, '*'    ; Display multiplication symbol
    int 21h

    mov dl, '2'    ; Display second number
    int 21h

    mov dl, '='    ; Display equals sign
    int 21h

    mov ax, result ; Display multiplication result
    add ax, '0'
    mov dl, ah
    int 21h
    mov dl, 10     ; Move to next line
    int 21h

    ; Division: 6 / 2
    mov al, num1
    mov bl, num2
    div bl
    mov result, ax  ; Storing the division result

    ; Display Division Result
    mov dl, '6'    ; Display first number
    mov ah, 02h
    int 21h

    mov dl, '/'    ; Display division symbol
    int 21h

    mov dl, '2'    ; Display second number
    int 21h

    mov dl, '='    ; Display equals sign
    int 21h

    mov ax, result ; Display division result
    add ax, '0'
    mov dl, ah
    int 21h
    mov dl, 10     ; Move to next line
    int 21h

    mov ah, 4Ch    ; Exit program
    int 21h
main endp
end main
