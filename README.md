
 Jogo da Velha (Portugol Studio)
 Funcionalidades
O jogo oferece três modos distintos, selecionáveis no menu inicial:
1.	Jogador vs Jogador: Disputa local entre duas pessoas dividindo o teclado.
2.	Jogador vs CPU: Desafie a máquina! A CPU escolhe posições aleatórias para tentar te vencer.
3.	CPU vs CPU: Um modo "espectador" onde você assiste dois algoritmos jogarem um contra o outro em tempo real.
________________________________________
 Tecnologias Utilizadas
•	Linguagem: Portugol (Portugol Studio)
•	Biblioteca: Util (para sorteio de jogadas e controle de tempo)
•	Estrutura de Dados: Matriz $3 \times 3$ para o tabuleiro.
________________________________________
 Como Jogar
1.	Baixe e instale o Portugol Studio.
2.	Copie o código do arquivo .por deste repositório.
3.	Cole no editor e clique em Executar.
4.	Comandos: As posições são escolhidas informando a Linha e a Coluna (variando de 0 a 2).
Exemplo de coordenadas:
•	Topo Esquerda: 0 0
•	Centro: 1 1
•	Inferior Direita: 2 2
________________________________________
 Estrutura do Código
O código está modularizado para facilitar a leitura:
Função	Descrição
inicio()	Gerencia o menu principal e a escolha do modo.
exibirTabuleiro()	Renderiza a grade atualizada no console.
verificarVencedor()	Checa todas as linhas, colunas e diagonais em busca de um trio.
modo...()	Contém a lógica específica de cada modo de jogo.
________________________________________
 Exemplo de Interface

    0   1   2
0 | X |   | O |
  |---|---|---|
1 |   | X |   |
  |---|---|---|
2 |   |   | O |
  |---|---|---|

