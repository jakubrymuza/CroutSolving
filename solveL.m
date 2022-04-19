function x = solveL(L,y)
% Autor: Jakub Rymuza
% funkcja rozwi¹zuje uk³ad L^T*x = y

n = length(y);
x = zeros(n,1);
x(n) = y(n)/L(n,n);

for i = n-1:-1:1
    j = i+1:n;
    x(i) = (y(i)-L(j,i).'*x(j))/L(i,i);
end