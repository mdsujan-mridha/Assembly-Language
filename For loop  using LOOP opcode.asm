;For loop  using LOOP opcode
.model small

.stack 100h

.data



   

.code 

main proc
  
    mov ah,1
    int 21h
    
    mov bl,al
    sub al,48
    
    mov cx,0
    mov cl,al
    
    for:
    mov ah,2
    mov dl,bl
    int 21h
    
    
    dec bl
    loop for:
    
    
        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main