#transformation d'un nombre entier en un binaire en language assembleur

.data 
E: .asciiz "entrez x\n"
s: .asciiz "x en binaire = "

.text
_start:
	la $4,E
	addi $2,$0,4
	syscall

    addi $2,$0,5
	syscall
	add $9,$0,$2
	
	la $4,s
	addi $2,$0,4
	syscall

	addi $8,$0,2
	addi $4,$0,0
	addi $10,$0,10
	addi $12,$0,1

tq: 	
	blez $9,ftq
	div $9,$8
	mfhi $11
	mflo $9

	blez $11,if
		add $4,$4,$12
if:
	sll $12,$12,4
	j tq

ftq: addi $2,$0,1
	 syscall
addi $2,$0,10
syscall

