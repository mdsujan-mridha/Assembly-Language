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
  
  cmp bl,bh ;cmp = compare two number 
  jg L1  ;jg jump gaterthen
  
  jmp L2 ; this is else condition
  
  L1:
  mov ah,2
  mov dl,bl
  int 21h
  
  L2:
   
 
  

                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main