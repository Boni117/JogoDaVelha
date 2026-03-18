programa
{
	funcao inicio()
	{
		cadeia casa
		inteiro opcao
		cadeia casas[3][3] = {
			{"1", "2", "3"},
			{"4", "5", "6"},
			{"7", "8", "9"}
		}

		faca {
			limpa()
			menu()
			leia(opcao)
			limpa()

			se (opcao >= 1 e opcao <= 3){
				para (inteiro linha = 0; linha < 3; linha++){
					para (inteiro coluna = 0; coluna < 3; coluna++){
						escreva(casas[linha][coluna], " ")
					}
					escreva("\n")
				}
				
				escolha (opcao){
					caso 1:
						escreva("\nEscolha uma casa: ")
						leia(casa)
						pare
					
					caso 2:
						
				}
			}senao se (opcao == 4){
				escreva("Saindo...")
			}

		}enquanto (opcao != 4)
	} 

	funcao menu(){
	
		escreva("======= JOGO DA VELHA =======\n")
		escreva("Escolha uma opção de jogo:\n")
		escreva("1. JxJ\n")
		escreva("2. JxCPU\n")
		escreva("3. CPUxCPU\n")
		escreva("4. Sair\n")
	}
}