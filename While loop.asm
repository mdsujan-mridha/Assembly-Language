;While loop
.model small

.stack 100h

.data



   

.code 

main proc
  
    mov ah,1
    int 21h
    mov bl,al   
    
    mov cl,'1' ;counter
    
    while:
    cmp cl,bl
    jg exit:
    
    mov ah,2    ;if condition true then print
    mov dl,cl
    int 21h
    
    inc cl
    
    jmp while:
    
    
        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main