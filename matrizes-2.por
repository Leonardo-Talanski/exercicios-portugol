programa
{

funcao inicio()
{
	caracter nomeAluno[2][8] = {{ 'L', 'E', 'O', 'N', 'A', 'R', 'D', 'O' } , { 'T', 'A', 'L', 'A', 'N', 'S', 'K', 'I' }}
	inteiro contadorConsoante = 0 
	inteiro contadorVogais = 0
	
		

	para (inteiro i = 0; i <=1 ; i++) 
	{
	               
		para (inteiro j = 0; j <=7 ; j++)
		{
		  	escreva(nomeAluno[i][j])
		  	se (nomeAluno[i][j] == 'A' ou 
		  	    nomeAluno[i][j] == 'E' ou 
		  	    nomeAluno[i][j] == 'I' ou 
		  	    nomeAluno[i][j] == 'O' ou 
		  	    nomeAluno[i][j] == 'U')
		     {   
				contadorVogais++
		  
	          }
			senao se (nomeAluno[i][j]  != ' ' ) 
		     {
			 	contadorConsoante++
		     }
	     
   		
	     }
        escreva (" ")
	}
		escreva("\n" , "O número de vogais é :", contadorVogais ,"\n", "O número de consoantes é:", contadorConsoante)
}
}
