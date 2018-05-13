clear all
clc

% Obter variaveis de parametro [a, b, c, m, n]
% m = numero de agentes disponiveis
% n = numero de tarefas 
% a = quantidade de recursos necessários ao  agente i para fazer a tarefa j
%     (5 agentes realizando 25 tarefas cada 1)
% c = Custo de atribuir a tarefa j ao agente i
% b = Capacidade do agente i
load('teste1_5x25.mat')
% =========================================================================
N = 5000;
% Gera populacao inicial
for i = 1:N
    P(:,i) = randi([1 m],1,n);
end

% Insere o predador na populacao e analisa os sobreviventes===============
% Restricao da capacidade do trabalhador ficar negativa
minGeral = 1000;

while true % Condicao de parada das iteracoes    
    sobreviventes = predador(P, a, b);
    % Pega a solucao que tem o menor custo da pop de sobreviventes
    minAtual = minPop(sobreviventes, c);
    if minAtual < minGeral
        minGeral = minAtual;
    end
    % Faz o crossover das solucoes factiveis para gerar filhos
    % filhos = crossover(sobreviventes);
    % Roda o predador novamente sobre os filhos e analisa se produz uma
    % solucao melhor
    % Quando o custo min nao alterar mais a cada alteracao, parar o while
    
end

