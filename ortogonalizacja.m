% Rozkład A=QR
%#ok<*NOPTS>
clear
clc

A = [2 3 4
    4 5 4
    1 2 3
    5 5 8]

[lwiersz, lwektor] = size(A);
Q = zeros(lwiersz, lwektor);

% wektory y
Y = zeros(lwiersz, lwektor);

% ortogonalizacja Grama-Schmidta
for k = 1:lwektor
    % wektor xk
    xk = A(:, k);
    
    % wektor yk
    yk = xk;
    for i = 1:(k-1)
        yl = Y(:, i);
        yk = yk - (dot(xk, yl) / norm(yl)^2) * yl;
    end
    Y(:, k) = yk;

    % wektor qk
    qk = yk / norm(yk);
    Q(:, k) = qk;
end

%Q = [q1 q2 q3];
%R = [
%    dot(q1, x1) dot(q1, x2) dot(q1, x3)
%    0           dot(q2, x2) dot(q2, x3)
%    0           0           dot(q3, x3)];

% obliczanie R
lwiersz_R = lwektor;
lkol_R = lwektor;
R = zeros(lwiersz_R, lkol_R);

for w = 1:lwiersz_R
    for k = w:lkol_R
        R(w, k) = dot(Q(:, w), A(:, k));
    end
end

% sprawdzenie
Q
R
SPRAWDZENIE = Q' * Q
ILOCZYN_QR = Q * R
