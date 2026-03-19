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

	funcao modoJogadorVsCPU()
	{
		// Aqui um jogador usa 'leia' e o outro usa 'u.sorteia'
		escreva("Iniciando modo Jogador vs CPU...\n")
	}

	funcao modoCPUvsCPU()
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
		// Escreva aqui o código para mostrar o tabuleiro na tela
	}
}