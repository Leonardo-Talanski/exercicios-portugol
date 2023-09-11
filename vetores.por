programa
{
	
	funcao inicio(){

	real notaAluno[5]

	inteiro quantidadeDeNotas

	
		escreva("Imprima a quantidade de notas: ")
		leia(quantidadeDeNotas)
		
		para (inteiro contador = 0 ; contador < quantidadeDeNotas ; contador++) {
		
		escreva("Nota do Aluno", contador+1, ": ")
		leia(notaAluno[contador])
		escreva("\n")
	}
	
		para (inteiro contador = 0 ; contador < quantidadeDeNotas ; contador++) {
		escreva("Nota do aluno", contador+1,": ", notaAluno[contador], "\n")
	}
}
}
