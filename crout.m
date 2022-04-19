function [L,U] = crout(A)
% Autor: Jakub Rymuza
% funkcja implementuje rozk³ad Crouta macierzy A o rozmiarze n na n

n = length(A);
U = eye(n,n);
L = zeros(n,n);
L(:,1) = A(:,1);
U(1,:) = A(1,:)/L(1,1);

for i = 2:n
    for j = 2:i
        L(i,j) = A(i,j)-L(i,1:j-1)*U(1:j-1,j);
    end

    for j = i+1:n
        U(i,j) = (A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i);
    end
end

