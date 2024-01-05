.model small

.stack 100h

.data
a db "Enter a Hexa Digit : $"



.code 

main proc
   
   mov al,3
   mov bl,2
   mul bl ;al=al*bl
   
   mov ah,2
   mov dl,al
   add dl,48
   int 21h
                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main