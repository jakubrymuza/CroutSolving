function y = solveU(U,b)
% Autor: Jakub Rymuza
% funkcja rozwi�zuje uk�ad U^T*y = b

n = length(b);
y = b;

for i = 2:n
    j = 1:i-1;
    % jedynki na gl�wnej przek�tnej, nie trzeba dzieli�
    y(i) = (b(i)-U(j,i).'*y(j));
end