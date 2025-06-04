% Dopasowywanie 
load("ex/zestaw1.mat")

A = []

% A = [
% x3 x2 x 1
% ...
for i = stopien:-1:0
    A = [A x.^i];
end

L = -y;
X = -inv(A' * A) * (A' * L)
V = A*X + L

%nadl = n - r;
nadl = size(A, 1) - size(A, 2)
sigma_0 = sqrt(V' * V/nadl)

hold on;
plot(x, y, 'o')
plot(x, A*X, 'LineWidth', 3)
hold off;