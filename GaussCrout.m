function x = GaussCrout(L,U,b)
% Autor: Jakub Rymuza
% funkcja rozwi¹zuje równanie A^T*x = b
% gdzie macierz A zosta³a roz³o¿ne przez rozk³ad Crouta: A = LU

y = solveU(U,b); % U^T*y = b

x = solveL(L,y); % L^T*x = y
