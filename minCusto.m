function x = minCusto(c)
x = zeros(5,25);
for j=1:25
    [minimo,ind] = min(c(:,j));
    x(ind,j) = 1;
end