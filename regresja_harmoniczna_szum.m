clear
clc

load("ex/harmonic_regression.mat")
y = y + 0.1*(x/5).^2;


A = [sin(x) cos(x) x.^0 x.^2 x];
L = -y;
X = -inv(A' * A) * (A' * L)

ampl = sqrt(X(1)^2 + X(2)^2)
phi = atan(X(2)^2 / X(1)^2)

plot(x, y, 'o');
hold on;
plot(x, A*X, 'LineWidth', 3);
hold off;
