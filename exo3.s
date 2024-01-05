#tableau / calcule nbr elements 0< 
.data 
E: .asciiz "entrez le nombre de case : \n"
E2: .asciiz "entrez les element du tableau : \n"
S: .asciiz "le nombre d'element strictement positif : \n"
tab: .word 0x0
.text
_start:
	la $4,E
	addi $2,$0,4
	syscall
	addi $2,$0,5
	syscall
	add $9,$0,$2	
	addi $10,$0,1
	la $11,tab
	la $4,E2
	addi $2,$0,4
	syscall
pour: 
	sub $8,$9,$10
	bltz $8, fp
	addi $2,$0,5
	syscall
	sw $2,0($11)
	addi $11,$11,4
	addi $10,$10,1
	j pour
fp:
	addi $10,$0,1
	la $11,tab
	la $4,S
	addi $2,$0,4
	syscall
	addi $4,$0,0
tq:
	sub $8,$9,$10
	bltz $8, ftq
	lw $12,0($11)
	blez $12,if
		addi $4,$4,1
		j if
	if: 
		addi $11,$11,4
		addi $10,$10,1
		j tq
ftq:
	addi $2,$0,1
	syscall
	addi $2,$0,10
	syscall	
; ----------------------
    .END;  Merci
; ----------------------
