.model small
.stack 100h

.data
.code: 

main proc 
    
    mov ah ,1 ;read a chharacter
    int 21h
    
    mov bl,al ;move data from al to bl    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov ah,2   ;display stored data in bl register
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp

end main
