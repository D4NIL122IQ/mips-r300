#factorielle
.data 
E: .asciiz "entrez un entier\n"
s: .asciiz "le resultat de fact(x) = "

.text
_start:
	la $4, E
	addi $2,$0,4
	syscall
	
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	la $4, s
	addi $2,$0,4
	syscall

	addi $4,$0,1

tq: 
	blez $8, ftq
	mult $4,$8
	mflo $4
	addi $8,$8,-1
	j tq

ftq:
	addi $2,$0,1
	syscall

addi $2,$0,10
syscall
; ----------------------
    .END;  Merci
; ----------------------
