.model small

.stack 100h

.data
a db "Enter Number 1 : $"
b db "Enter Number 2 : $"
c db "Multiplication two number : $"

number1 db ?



.code 

main proc
   
  mov ax,@data
  mov ds,ax
  
  
  mov ah,9
  lea dx,a
  int 21h
  
  
  mov ah,1
  int 21h
  sub al,48
  mov number1,al
  
  
   
   
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  
  mov ah,9
  lea dx,b
  int 21h
  
  mov ah,1
  int 21h
  sub al,48
  
  mul number1 ;al = al*number1
  
  aam ;
  
  mov bx,ax
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov ah,9
  lea dx,c
  int 21h
  
  mov ah,2
  mov dl,bh
  add dl,48
  int 21h
  
  mov ah,2
  mov dl,bl
  add dl,48
  int 21h 
   
                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main