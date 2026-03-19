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

	funcao modoJogadorVsJogador()
	{
		escreva("Iniciando modo Jogador vs Jogador...\n")
	}

	funcao modoJogadorVsCPU()
	{
		inteiro linha, coluna // Criamos as variáveis aqui para a função usar
		logico alguemVenceu = falso

		faca {
			exibirTabuleiro()

			// 1. JOGADA DO HUMANO
			escreva("Sua vez (X). Digite Linha [0-2] e depois Coluna [0-2]:\n")
			leia(linha, coluna)
			casas[linha][coluna] = "X"

			// 2. VERIFICAR SE O HUMANO GANHOU
			alguemVenceu = verificarVencedor()

			se (alguemVenceu == falso) 
			{
				// 3. JOGADA DA CPU (Só joga se o humano não ganhou)
				faca {
					linha = u.sorteia(0, 2)
					coluna = u.sorteia(0, 2)
				} enquanto (casas[linha][coluna] != " ") 
				
				casas[linha][coluna] = "O"

				// 4. VERIFICAR SE A CPU GANHOU
				alguemVenceu = verificarVencedor()
			}
			
		} enquanto (alguemVenceu == falso)

		exibirTabuleiro()
		escreva("O JOGO ACABOU!")
	}

	funcao modoCPUvsCPU()
	{
		escreva("Iniciando modo CPU vs CPU...\n")
	}

	funcao logico verificarVencedor()
	{
		// Verifica Linhas
		para(inteiro i = 0; i < 3; i++)
		{
			se (casas[i][0] != " " e casas[i][0] == casas[i][1] e casas[i][1] == casas[i][2])
			{
				retorne verdadeiro 
			}
		}
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
				escreva("  ", casas[linha][coluna], "  |") 
			}
			escreva("\n   |_____|_____|_____|\n")
		}
		escreva("\n")
	}
}

// teste