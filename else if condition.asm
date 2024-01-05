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
  jge L1  ;jg jump gaterthen  (IF)
  
  jmp L2 ; this is else condition
  
  L1:
  mov ah,2
  mov dl,bl
  int 21h
  jmp exit:
  
  L2:
  mov ah,2
  mov dl,bh
  int 21h
  jmp exit: 
 
  

                


        
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main