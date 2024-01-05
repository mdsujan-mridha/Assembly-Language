;While loop
.model small

.stack 100h

.data



   

.code 

main proc
  
    mov ah,1
    int 21h
    mov bl,al   
    
   
    
    while:
    cmp bl,'0'
    je exit:
    
    mov ah,2    ;if condition true then print
    mov dl,bl
    int 21h
    
    dec bl
    
    jmp while:
    
    
        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main