;Division two static  number
.model small

.stack 100h

.data
a db "Enter Number 1 : $"
b db "Enter Number 2 : $"
c db "Multiplication two number : $"

number1 db ?



.code 

main proc
   
 mov al,8
 mov bl,2
 div bl ;bl=al/bl
 
 mov cl,al
 mov ch,ah
 
 mov ah,2
 mov dl,cl
 add dl,48
 int 21h
 
 mov ah,2
 mov dl,ch
 add dl,48
 int 21h
                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main