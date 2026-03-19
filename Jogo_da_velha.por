programa
{
	inclua biblioteca Util --> u

	cadeia casas[3][3] = {
		{" "," "," "},
		{" "," "," "},
		{" "," "," "}
	}
	
	funcao inicio()
	{
		inteiro opcao
		escreva("--- MENU DO JOGO ---\n")
		escreva("1) Jogador vs Jogador\n")
		escreva("2) Jogador vs CPU\n")
		escreva("3) CPU vs CPU\n")
		escreva("Escolha: ")
		leia(opcao)

		escolha(opcao)
		{
			caso 1: 
				modoJogadorVsJogador() 
				pare
			caso 2: 
				modoJogadorVsCPU() 
				pare
			caso 3: 
				modoCPUvsCPU() 
				pare
			caso contrario: 
				escreva("Opção inválida!")
		}
	} 

	// --- FUNÇÕES DOS MODOS DE JOGO ---

	funcao modoJogadorVsJogador()
	{
		// Aqui você sabe que SEMPRE vai usar o 'leia' para os dois jogadores
		escreva("Iniciando modo Jogador vs Jogador...\n")
		// Tente rascunhar o faca...enquanto aqui
	}

	

	funcao modoCPUvsCPU()funcao modoJogadorVsCPU()
	{
		inteiro linha, coluna
		logico jogoRodando = verdadeiro
		faca{
			//vez do jogador
			linha = u.sorteia(0, 2)
			coluna = u.sorteia(0, 2)
			}enquanto (casas[linha][coluna] != " "
		// Aqui um jogador usa 'leia' e o outro usa 'u.sorteia'
		escreva("Iniciando modo Jogador vs CPU...\n")
	}
	{
		// Aqui os dois jogadores usam 'u.sorteia'
		escreva("Iniciando modo CPU vs CPU...\n")
	}

	// --- FUNÇÕES DE APOIO ---

	funcao logico verificarVencedor()
	{
		para(inteiro i = 0; i < 3; i++)
		{
			se (casas[i][0] != " " e casas[i][0] == casas[i][1] e casas[i][1] == casas[i][2])
			{
				retorne verdadeiro 
			}
		}
		// Dica: Falta adicionar aqui a verificação de colunas e diagonais depois!
		retorne falso
	}
funcao exibirTabuleiro()
	{
		limpa() 
		escreva("      0     1     2  \n") 
		escreva("   ___________________\n")
		
		para (inteiro linha = 0; linha < 3; linha++) 
		{
			escreva(linha, " |") 
			
			para (inteiro coluna = 0; coluna < 3; coluna++) 
			{
				// Agora o código "fala" o que está fazendo
				escreva("  ", casas[linha][coluna], "  |") 
			}
			
			escreva("\n   |_____|_____|_____|\n")
		}
		escreva("\n")
	}
}