function [D,x,flNorm] = mn2proj1(A,b,screen)
% Autor: Jakub Rymuza
% Program:
% - liczy wyznacznik A
% - rozwi¹zuje uk³ad A^T*x = b z u¿yciem rozk³adu Crouta
% - liczy normê wyra¿enia A^T*x'-b, gdzie x' to rozwi¹zanie powy¿szego
%   uk³adu obliczone w arytmetyce fl
% wyniki s¹ wyœwietlane, gdy argument screen jest równy 1 (domyœlnie 0)

if (nargin < 3 || isempty(screen))
    screen = 0; 
end

[L,U] = crout(A); % rozk³ad Crouta

% wyznacznik: det(A) = det(L)*det(U) = det(L) = 
D = prod(diag(L));

x = GaussCrout(L,U,b); % rozwi¹zanie równania

flNorm = myNorm(A,x,b); % obliczenie normy

% wyœwietlenie wyniku (opcjonalne)
if (screen == 1)
    printSol(D,x,flNorm)
end
    
