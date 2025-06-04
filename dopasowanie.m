% Dopasowywanie funkcji wielomianowej do punktów
clear
clc

load('ex/zestaw16.mat')

% Wyświetl wszystkie zdefiniowane zmienne:
% whos

lw = size(x, 1);
n = stopien + 1;  % ile szukamy współczynników

A = ones(lw, n);

for i = 1:n
    A(:, i) = x.^(n-i);
end

L = -y;

X = -inv(A' * A) * (A' * L);

V = A * X + L;

%polynomial = @(x) X(1)*x.^3 + X(2)*x.^2 + X(3)*x + X(4);
function r = polynomial(x, A)
    r = 0;
    n = numel(A);
    for i = 1:n
        r = r + A(i)*x.^(n-i);
    end
end

arg = -10:0.1:10;
val = polynomial(arg, X);

% wynik
X

% wykres
hold on;
scatter(x, y)
plot(arg, val, 'LineWidth', 8);
hold off;

suma_poprawek = sum(V)
V

% najkrócej:
% A = [x.^3 x.^2 x x.^0];
% L = -y;
% X = -inv(A'*A)*(A'*L)
% kontrola
% V = A*X+L;
% A'*V