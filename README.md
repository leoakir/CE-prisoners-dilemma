# CE-prisoners-dilemma

Léo Akira Abe Barros - 180137531

## Apresentação

O modelo computacional do Dilema do Prisioneiro representa o incentivo da comperação ou competição dentro de um sistema baseado em reciprocidade, onde é benéfico para um agente tomar ações nem sempre vantajosas em prol de um melhor resultado à longo prazo.

Tendo em vista isso, apresento este modelo que adiciona desigualdade aos resultados das ações dos agentes, incrementando a penalidade das ações na matriz de perdas e ganhos, considerando a matriz base:

|               | Cooperate | Defect|
|:-------------:|:---------:|:-----:|
| **Cooperate** | 2, 2      | 1, 0  |
| **Defect**    | 0, 1      | 3, 3  |

Um agente com penalidade teria o seu score multiplicado por uma variável, por exemplo, se o multiplicador fosse igual a 1.5, e o agente desertasse e seu par desertasse, o agente teria seu score incrementado em 3*1.5 = 4.5

## Hipótese causal

A hipótese que deseja-se comprovar com essa alteração é que mesmo aderindo à uma estratégia que seja benéfica ou ideal a longo prazo, agentes desiguais ainda terão dificuldade em ter sucesso à longo prazo por competirem com agentes privilegiados.

## Alterações no código

O código original utilizava um score positivo para afetar as decisões dos agentes, o score foi alterado para ser negativo, ou seja, quanto maior, menos desejável. Também foi adicionado uma mecânica de "morte" dos agentes, onde se o score ultrapassar um certo limite, o agente "morre" e assume as características de um vizinho.

Além disso, adicionamos um contador de "steps" individual para cada agente, para saber quandos passos ele sobreviveu, denominado de age (idade).

As variáveis independentes do modelo são "penalty_mul" e "penalty_max", que respectivamente multiplicam o score para os agente desavantajados e que determinam o limite de score para a morte de um agente.

Para variáveis dependentes, calculamos a diferença entre a idade média dos agentes privilegiados e desprivilegiados, tendo como resultado a porcentagem a mais que os agente privilegiados vivem. Também calculamos a proporção de agentes desprivilegiados a cada passo da simulação e guardamos em que passo eles foram extintos, caso aconteça.

## Execução do Simulador

O simulador foi executado com o comando "mesa runserver".
