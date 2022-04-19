function flNorm = myNorm(A,x,b)
% Autor: Jakub Rymuza
% liczy normê euklidesow¹ wyra¿enia A^T*x-b

n = length(x);
temp = zeros(n,1);

for i = 1:n  
    temp(i) = A(:,i).'*x;
end

temp = temp-b;

flNorm = sqrt(sum(temp.*temp)); % ||temp||



        
        