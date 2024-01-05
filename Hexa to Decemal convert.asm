.model small

.stack 100h

.data
a db "Enter a Hexa Digit : $"



.code 

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al

    sub bl,17 ;17 sub korle decemal number hobe
    
    
   
    
    ;print new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    mov ah,2
    mov dl,49 ;print 1
    int 21h
     
    
    mov ah,2
    mov dl,bl
    int 21h

        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main