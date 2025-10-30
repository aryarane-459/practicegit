.MODEL SMALL
.STACK 100h

.DATA
    num1 db 15
    num2 db 3
    msg  db 0Ah,0Dh,"SUBTRACTION IS: $"
.CODE
MAIN PROC FAR

         MOV AX,@DATA
         MOV DS,AX
         MOV AH,09h

         LEA DX,msg
         INT 21h

         MOV AL,num1
         SUB AL,num2

         MOV BL,10
         XOR AH,AH
         DIV BL
         MOV BH,AH

         ADD AL,30H
         MOV DL,AL
         MOV AH,02h
         INT 21h

         MOV AL,BH
         ADD AL,30h
         MOV DL,AL
         MOV AH,02h
         INT 21h

         MOV AH,4Ch
         INT 21h

MAIN ENDP
END MAIN 