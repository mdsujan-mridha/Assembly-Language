.model small

.stack 100h

.data
a db "Enter a Number 1 : $"
b db "Enter a Number 2 : $ " 
c db "Enter a Number 3 : $ "
message db "The sum is : $"


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
    
   ;new line
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;print a message
    mov ah,9
    lea dx,b
    int 21h
    

    
    mov ah,1
    int 21h
    mov ch,al  
    ;take input 3 
    
     ;new line
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
   
  
    
     ;print a message
    mov ah,9
    lea dx,c
    int 21h  
    
   mov ah,1
   int 21h
   mov cl,al   ;take input
    
   ;perform addition operation
    add bl,ch
    sub bl,48
    add bl,cl
    ;new line
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;print a message
    mov ah,9
    lea dx,message
    int 21h
     
     
   ;show output in integer 
   
   
   mov ah,2
   mov dl,bl
   sub dl,48
   int 21h
   

        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main