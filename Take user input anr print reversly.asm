.model small

.stack 100h

.data
a db "Enter a character : $"
b db "The Number is: $"

.code 

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9 ; 9 for print string
    lea dx,a
    int 21h  
    
    mov ah,1 ; for take input
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov ch,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    ;for new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
 
    
    ;print the number 
    mov ah,2
    mov dl,cl
    int 21h
    
       ;for new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
      
    ;print the number 
    mov ah,2
    mov dl,ch
    int 21h 
    
         ;for new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
      ;print the number 
    mov ah,2
    mov dl,bl
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main