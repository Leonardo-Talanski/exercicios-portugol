programa
{
	
	funcao inicio()  {

	inteiro MULTIPLICANDO = 7

	escreva("** Tabuada do 7 ** \n\n")

	para (inteiro multi = 3 ; multi <= 48; multi += 3) {

		escreva(MULTIPLICANDO, " x ", multi ," = ", MULTIPLICANDO * multi , " \n")

		se ( (MULTIPLICANDO * multi )% 2== 0) {
			escreva(" -> Este número é par.")
		}
		escreva("\n")
		}	
	}
}
