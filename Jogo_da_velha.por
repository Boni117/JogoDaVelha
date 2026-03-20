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
		escreva("--- JOGO DA VELHA ---\n")
		escreva("1) Jogador vs Jogador\n")
		escreva("2) Jogador vs CPU\n")
		escreva("3) CPU vs CPU\n")
		escreva("Escolha: ")
		leia(opcao)

		escolha(opcao){
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
				escreva("Opção inválida.")
		}
	}

	funcao modoJogadorVsJogador()
	{
		inteiro linha, coluna, totalJogadas = 0
		logico alguemVenceu = falso
		cadeia jogadorAtual = "X"

		faca{
			exibirTabuleiro()	
			cadeia nomeExibicao
			
			se (jogadorAtual == "X") {
				nomeExibicao = "Jogador 1 (X)"
			} senao {
				nomeExibicao = "Jogador 2 (O)"
			}

			escreva("\n--- Vez do ", nomeExibicao, " ---\n")
			escreva("Digite a linha e coluna (0-2): ")
			leia(linha, coluna)

			se(linha >= 0 e linha <= 2 e coluna >= 0 e coluna <= 2 e casas[linha][coluna] == " "){
				casas[linha][coluna] = jogadorAtual
				totalJogadas = totalJogadas + 1

				alguemVenceu = verificarVencedor()

				se(alguemVenceu == falso e totalJogadas < 9){
					se (jogadorAtual == "X") {
						jogadorAtual = "O"
					} senao {
						jogadorAtual = "X"
					}
				}
			}senao{
				escreva("Jogada inválida, tente novamente.")
				u.aguarde(1500)
			}
		}enquanto(alguemVenceu == falso e totalJogadas < 9)

		exibirResultados(alguemVenceu, jogadorAtual)
	}

	funcao modoJogadorVsCPU()
	{
		inteiro linha, coluna, totalJogadas = 0
		logico alguemVenceu = falso
		cadeia vencedorFinal = ""

		faca{
			exibirTabuleiro()
			escreva("\nSua vez [X]. Linha e coluna: ")
			leia(linha, coluna)

			se(linha >= 0 e linha <= 2 e coluna >= 0 e coluna <= 2 e casas[linha][coluna] == " "){
				casas[linha][coluna] = "X"
				totalJogadas = totalJogadas + 1
				alguemVenceu = verificarVencedor()
				vencedorFinal = "Você"

				se(alguemVenceu == falso e totalJogadas < 9){
					escreva("\nCPU pensando...")
					u.aguarde(800)
					faca{
						linha = u.sorteia(0, 2)
						coluna = u.sorteia(0, 2)
					}enquanto(casas[linha][coluna] != " ")

					casas[linha][coluna] = "O"
					totalJogadas = totalJogadas + 1
					alguemVenceu = verificarVencedor()
					vencedorFinal = "CPU"
				}
			}senao{
				escreva("Jogada inválida!")
				u.aguarde(1000)
			}
		}enquanto(alguemVenceu == falso e totalJogadas < 9)

		exibirResultados(alguemVenceu, vencedorFinal)
	}

	funcao modoCPUvsCPU()
	{
		inteiro linha, coluna, totalJogadas = 0
		logico alguemVenceu = falso
		cadeia jogadorAtual = "X"

		faca{
			exibirTabuleiro()
			escreva("\nVez da CPU [", jogadorAtual, "]. Pensando...\n")
			u.aguarde(1000) 

			faca{
				linha = u.sorteia(0, 2)
				coluna = u.sorteia(0, 2)
			}enquanto(casas[linha][coluna] != " ")

			casas[linha][coluna] = jogadorAtual
			totalJogadas = totalJogadas + 1
			alguemVenceu = verificarVencedor()

			se(alguemVenceu == falso e totalJogadas < 9){
				se (jogadorAtual == "X") {
					jogadorAtual = "O"
				} senao {
					jogadorAtual = "X"
				}
			}
		}enquanto(alguemVenceu == falso e totalJogadas < 9)

		exibirResultados(alguemVenceu, jogadorAtual)
	}

	funcao exibirTabuleiro()
	{
		limpa()
		escreva("    0   1   2\n")
		para(inteiro linha = 0; linha < 3; linha++){
			escreva(linha, " |")
			para(inteiro coluna = 0; coluna < 3; coluna++){
				escreva(" ", casas[linha][coluna], " |")
			}
			escreva("\n  |---|---|---|\n")
		}
	}

	funcao logico verificarVencedor()
	{
		para(inteiro i = 0; i < 3; i++){
			se(casas[i][0] != " " e casas[i][0] == casas[i][1] e casas[i][1] == casas[i][2]) retorne verdadeiro
			se(casas[0][i] != " " e casas[0][i] == casas[1][i] e casas[1][i] == casas[2][i]) retorne verdadeiro
		}
		se(casas[0][0] != " " e casas[0][0] == casas[1][1] e casas[1][1] == casas[2][2]) retorne verdadeiro
		se(casas[0][2] != " " e casas[0][2] == casas[1][1] e casas[1][1] == casas[2][0]) retorne verdadeiro
		retorne falso
	}

	funcao exibirResultados(logico venceu, cadeia jogador)
	{
		exibirTabuleiro()
		se(venceu){
			escreva("\nFim de jogo. [", jogador, "] venceu!\n")
		}senao{
			escreva("\nDeu velha!\n")
		}
	}
}