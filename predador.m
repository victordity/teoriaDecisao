% Funcao predador elimina todas as colunas infactiveis da populacao, sendo
% que solucoes infactiveis sao aquelas que resultam em algum trabalhador
% com capacidade negativa


function sobreviventes = predador(pop, a, b)

[tarefas, tamPop] = size(pop);
% Subtrai o recurso do trabalho realizado, da capacidade do trabalhador
for j=1:tamPop
    flag = 0;
    capInd = b;
    for i=1:tarefas
        capInd(1,P(i,j)) = capInd(1,P(i,j)) - a(P(i,j),i);
    %Analisa se eh uma solucao factivel
    for i=1:5
        if capInd[i] < 0
            % flag = 1 se a solucao for infactivel
            flag = 1;
        end
    end
    % Se a solucao for infactivel, retira ela da populacao
    if flag == 1
        pop[:,j] = [];
        % Volta o contatod 1 posicao pois a coluna foi retirada
        j = j-1;
    end
    end
end
sobreviventes = pop;
end      
    
    
        

