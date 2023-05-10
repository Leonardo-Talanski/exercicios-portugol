programa
{

	inclua biblioteca Tipos -->tp

	inclua biblioteca Sons --> som

	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro 
			codigoVoto,
			votosTotais = 0, 
			votosCandidato1 = 0, 
			votosCandidato2 = 0, 
			votosCandidato3 = 0,
			votosBranco = 0, 
			votosNulo = 0,
			votosTotaisGanhador = 0
		
		real 
			percentualVotosCandidato1 = 0.0, 
			percentualVotosCandidato2 = 0.0,
			percentualVotosCandidato3 = 0.0,
			percentualVotosBranco = 0.0,
			percentualVotosNulo = 0.0,
			percentualGanhador = 0.0
		
		caracter
			confirmaEncerramento = 'N'
		
		cadeia
			nomeCandidato1,
			nomeCandidato2,
			nomeCandidato3,
			nomeGanhador = ""
			
		logico 
			opcaoInvalida = falso,
			empate = falso,
			encerraVotacao = falso

			//voto no candidato 1 
			somConfirmacao()
			escreva("O som foi executado 1 vez/n")
			
			//voto no candidato 2
			somConfirmacao()
			escreva("O som foi executado 2 vez/n")
			
			//voto no candidato 3
			somConfirmacao()
			escreva("O som foi executado 3 vez/n")

		escreva("** Configuração da urna eletrônica\n\n")
		
		escreva(">> Digite o nome do candidato 1: ")
		leia(nomeCandidato1)

		escreva(">> Digite o nome do candidato 2: ")
		leia(nomeCandidato2)

		escreva(">> Digite o nome do candidato 3: ")
		leia(nomeCandidato3)
			
		
		faca {
			
			limpa()
			
			se (opcaoInvalida) {
				escreva("** Opção inválida! \n\n")
				opcaoInvalida = falso
			}
			
			escreva("** Opções de voto: \n\n")
			escreva("1 | ", nomeCandidato1, "\n")
			escreva("2 | ", nomeCandidato2, "\n")
			escreva("3 | ", nomeCandidato3, "\n")
			escreva("5 | Voto em branco \n")
			escreva("8 | Voto nulo \n\n")
			
	
			escreva("Digite agora o código do seu voto: ")
			leia(codigoVoto)
	
			escolha(codigoVoto) {
				
				caso 1:
					votosCandidato1++
					votosTotais++
					pare
				
				caso 2:
					votosCandidato2++
					votosTotais++
					pare
				
				caso 3:
					votosCandidato3++
					votosTotais++
					pare
				
				caso 5:
					votosBranco++
					votosTotais++
					pare
				
				caso 8:
					votosNulo++
					votosTotais++
					pare

				
				caso 232123:
					limpa()
					escreva(">> Deseja REALMENTE encerrar a votação?\n")
					escreva(">> Digite S para 'sim': ")
					leia(confirmaEncerramento)

					se(confirmaEncerramento == 's' ou confirmaEncerramento == 'S') {
						encerraVotacao = verdadeiro
					}
					pare
				
				caso contrario:
					opcaoInvalida = verdadeiro
			}
		} enquanto (nao encerraVotacao)

		
	
		se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato1
			votosTotaisGanhador = votosCandidato1 + votosBranco
		} senao se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato2
			votosTotaisGanhador = votosCandidato2 + votosBranco
		} senao se (votosCandidato3 > votosCandidato1 e votosCandidato3 > votosCandidato2) {
			
			nomeGanhador = nomeCandidato3
			votosTotaisGanhador = votosCandidato3 + votosBranco
		} senao {
			empate = verdadeiro
		}
		
		limpa()
		escreva("** Resultado da apuração desta urna\n\n")
		
		se (votosTotais != 0) {
			
			percentualGanhador = (tp.inteiro_para_real(votosTotaisGanhador) / tp.inteiro_para_real(votosTotais)) * 100.0
		
			escreva("Votos totais: ", votosTotais, "\n")
			
			escreva("Votos no candidato ",nomeCandidato1, ": ", votosCandidato1, " (", 
				tp.inteiro_para_real(votosCandidato1) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato2, ": ", votosCandidato2, " (", 
				tp.inteiro_para_real(votosCandidato2) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato3, ": ", votosCandidato3, " (", 
				tp.inteiro_para_real(votosCandidato3) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos em branco: ", votosBranco, " (", 
				tp.inteiro_para_real(votosBranco) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos nulos: ", votosNulo, " (", 
				tp.inteiro_para_real(votosNulo) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n\n")
				
		} senao {
			
			escreva("** Nenhum voto registrado\n")
			
		}

		
		se (nao empate) {
			escreva("** Ganhador nesta urna\n\n")
			escreva(nomeGanhador, " com ", votosTotaisGanhador, " votos (", 
				percentualGanhador, "%) somados os votos em branco\n")
		} senao {
			escreva("** Não foi possível determinar um ganhador nesta urna\n\n")
		}
		
		
	}

	funcao vazio somConfirmacao()
	{
		
		inteiro tempoDeEsperaSom = 2000
		inteiro somDeConfirmacao = Sons.carregar_som("confirma-urna.mp3")

		Sons.reproduzir_som(somDeConfirmacao, falso)
		
		Util.aguarde(tempoDeEsperaSom)

	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4619; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */