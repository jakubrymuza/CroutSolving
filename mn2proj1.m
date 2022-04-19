function [D,x,flNorm] = mn2proj1(A,b,screen)
% Autor: Jakub Rymuza
% Program:
% - liczy wyznacznik A
% - rozwi�zuje uk�ad A^T*x = b z u�yciem rozk�adu Crouta
% - liczy norm� wyra�enia A^T*x'-b, gdzie x' to rozwi�zanie powy�szego
%   uk�adu obliczone w arytmetyce fl
% wyniki s� wy�wietlane, gdy argument screen jest r�wny 1 (domy�lnie 0)

if (nargin < 3 || isempty(screen))
    screen = 0; 
end

[L,U] = crout(A); % rozk�ad Crouta

% wyznacznik: det(A) = det(L)*det(U) = det(L) = 
D = prod(diag(L));

x = GaussCrout(L,U,b); % rozwi�zanie r�wnania

flNorm = myNorm(A,x,b); % obliczenie normy

% wy�wietlenie wyniku (opcjonalne)
if (screen == 1)
    printSol(D,x,flNorm)
end
    
