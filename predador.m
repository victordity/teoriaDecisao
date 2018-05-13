% Funcao predador elimina todas as colunas infactiveis da populacao, sendo
% que solucoes infactiveis sao aquelas que resultam em algum trabalhador
% com capacidade negativa


function sobreviventes = predador(pop, a, b)

[tarefas, tamPop] = size(pop);
% Subtrai o recurso do trabalho realizado, da capacidade do trabalhador
j = 0;
flag = 0;
while j <= tamPop
    % Atualiza j somente se a solucao anterior foi factivel
    if flag == 0
        j = j + 1;
    end
    flag = 0;
    capInd = b;
    for i=1:tarefas
        capInd(pop(i,j),1) = capInd(pop(i,j),1) - a(pop(i,j),i);
    end
    %Analisa se eh uma solucao factivel
    for i=1:5
        if capInd(i,1) < 0
            % flag = 1 se a solucao for infactivel
            flag = 1;
            break;
        end
    end
    % Se a solucao for infactivel, retira ela da populacao
    if flag == 1
        pop(:,j) = [];
        tamPop = tamPop - 1;
    end
end
sobreviventes = pop;
end      
    
    
        

