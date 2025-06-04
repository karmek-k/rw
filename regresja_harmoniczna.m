clear
clc

load("ex/harmonic_regression.mat")

% ogólna postać poprawek
% v = Asin(x + phi) + b - y
A = [sin(x) cos(x) x.^0];
L = -y;
X = -inv(A' * A) * (A' * L)

ampl = sqrt(X(1)^2 + X(2)^2)
phi = atan(X(2)^2 / X(1)^2)

plot(x, y, 'o');
hold on;
plot(x, A*X, 'LineWidth', 3);
hold off;