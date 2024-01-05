.model small
.stack 100h
.data
    
    string db "I love myself $"
    
    
.code
main proc
    mov ax,@data
    mov ds,ax

   mov ah,9
   lea dx,string
   int 21h
    
    
    mov ah, 4Ch     ; Exit program
    int 21h
main endp
end main
