.model small
.stack 100h
.data
    number1 db 5   ; variable to hold the input number
    number2 db ? ;take input from keyboard
    
    
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ah,1
    int 21h
    mov number2,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,number2
    int 21h
    
    mov ah,2
    mov dl,number1 
    add dl,48
    int 21h
    
    
    mov ah, 4Ch     ; Exit program
    int 21h
main endp
end main
