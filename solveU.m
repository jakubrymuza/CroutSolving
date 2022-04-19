function y = solveU(U,b)
% Autor: Jakub Rymuza
% funkcja rozwi¹zuje uk³ad U^T*y = b

n = length(b);
y = b;

for i = 2:n
    j = 1:i-1;
    % jedynki na glównej przek¹tnej, nie trzeba dzieliæ
    y(i) = (b(i)-U(j,i).'*y(j));
end