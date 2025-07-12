# PGM1683 - Trabalho Metaheurísticas
Disciplina: PGM1683 - Meta-heurísticas e Técnicas de Otimização Aplicadas

Curso: Programa de Pós-Graduação em Computação Aplicada - Mestrado Profissional

Membros: João Paulo Martins Rodrigues (jpmrodrigues@ucs.br), Tiago Maciel da Silva (tmsilva@ucs.br), Pedro Miguel Agostini Carraro (pmacarraro@ucs.br)

## Índice

- [Índice](#índice)
- [Descrição do Trabalho](#descrição-do-trabalho)
- [Definições do Trabalho](#definições-do-trabalho)
  - [SA](#sa)
  - [GA](#ga)
- [Instâncias de Teste](#instâncias-de-teste)

## Descrição do Trabalho
Utilizando como base os códigos desenvolvidos em aula, resolva o Problema do Caixeiro Viajante (TSP) empregando as seguintes metaheurísticas:

1. Simulated Annealing (SA)
2. Algoritmo Genético (AG)

Inicialmente, avalie a sua implementação pelo emprego de instâncias pequenas, como aquelas vistas em aula. Compare os resultados obtidos com aqueles apresentados em aula.

Em seguida, avalie a sua implementação considerando as mesmas instâncias consideradas quando implementada a estratégia de Busca Local (Trabalho Heurísticas):

1. Capitais brasileiras
2. TSPLIB: http://comopt.ifi.uni-heidelberg.de/software/TSPLIB95/

O desenvolvimento e avaliação dos algoritmos deve seguir as seguintes regras:

- No desenvolvimento da solução baseada no SA, utilize as mesmas heurísticas construtiva e de melhoramento que foram empregadas na estratégia de Busca Local (Trabalho Heurísticas);
No desenvolvimento da solução baseada no AG, utilize como operador de mutação a mesma heurística de melhoramento empregada na estratégia de Busca Local (Trabalho Heurísticas), enquanto que para a operador de cruzamento, desenvolva uma das heurísticas vistas em aula ou alguma outra específica para o TSP. O operador de cruzamento utilizado deve ser exclusivo de cada grupo;
- Para avaliação do desempenho das metaheurísticas, ambas as instâncias devem ser resolvidas utilizando ambos os métodos, devendo ser apresentado  o melhor valor da FO encontrado, o valor médio, a mediana e o desvio padrão obtidos de um conjunto de 50 execuções do algoritmo aplicado, assumindo critérios de parada que garantam, aproximadamente, o mesmo esforço computacional de ambas as abordagens. Deverá ser apresentado também o melhor resultado (valor da função objetivo e solução) bem como o pior resultado (valor da função objetivo), obtidos nas simulações, informando o critério de parada empregado.

Apresente uma análise dos resultados obtidos com as duas metaheurísticas, realizando uma comparação entre ambas, mas também comparando com os resultados obtidos quando utilizada a Busca Local. Apresente as conclusões a partir da análise realizada.

## Definições do Trabalho
### SA
- Heurística Construtiva:
- Heurística de Melhoramento:
### GA
- Heurística Construtiva:
- Heurística de Melhoramento:

## Instâncias de Teste
- Capitais Brasileiras
- TSPLIB - ???
