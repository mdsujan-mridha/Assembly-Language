;Conditionl statement
.model small

.stack 100h

.data



   

.code 

main proc
  
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    cmp bl,bh
    jg L1
    
    
    mov ah,2
    mov dl,bl
    
    int 21h
    
    
    mov dl,bh
    int 21h
    jmp exit:
    
    L1:
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    jmp exit:
    
 
  

                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main