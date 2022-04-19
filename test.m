function test()
% Autor: Jakub Rymuza
% funkcja wyœwietla wyniki dla przyk³adów z raportu

format compact;

fprintf("przyklad 1:\n");
n = 3;

A = randi([-100,100],3)
b = randi([-100,100],3,1)

[L,U] = crout(A);
L
U
mn2proj1(A,b,1);

fprintf("\nprzyklad 2:\n");

for n = [5 10 20 30 40 50]
    A = hilb(n);
    b = rand(n,1);
    [~,~,norm1] = mn2proj1(A,b);
    norm2 = norm(A.'*linsolve(A.',b)-b);
    n
    norm1
    norm2
end
    