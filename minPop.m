% Calcula o somatorio do custo de cada solucao factivel, retorna o menor
% custo de todas as solucoes e o indice do individuo
function menorCustoPop = minPop(sobreviventes, c)
[tarefas, tamPop] = size(sobreviventes);
vetorSumCusto = zeros(tamPop);
custoInd = zeros(tarefas);

for j=1:tamPop
    % Soma o custo do individuo(coluna) da populacao
    for i=1:tarefas
        custoInd(j) = c(sobreviventes(i,j),i);
    end
    % Armazena os somatorios do custo de cada individuo no vetor
    vetorSumCusto[j] = sum(custoInd);
end
    %Retorna o menor custo dentre todos os individuos da pop
    menorCustoPop = min(vetorSumCusto);
end