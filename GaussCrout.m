function x = GaussCrout(L,U,b)
% Autor: Jakub Rymuza
% funkcja rozwi�zuje r�wnanie A^T*x = b
% gdzie macierz A zosta�a roz�o�ne przez rozk�ad Crouta: A = LU

y = solveU(U,b); % U^T*y = b

x = solveL(L,y); % L^T*x = y
