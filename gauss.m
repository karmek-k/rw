%
% Eliminacja Gaussa
%
clear
clc

% generowanie macierzy
rand("state", 6);

n = 8;

A = randi([1 9], n)
disp("POCZĄTKOWA")
[lw, lk] = size(A);

% eliminowanie wierszy
for k = 1:(lk-1)
    for w = (k+1):lw
        A(w, :) = A(w, :) - A(k, :) * (A(w, k) / A(k, k));
    end
end

A
disp("GAUSS")

% eliminacja Jordana
for k = lk:-1:2
    for w = (k-1):-1:1
        A(w, :) = A(w, :) - A(k, :) * (A(w, k) / A(k, k));
    end
end

A
disp("JORDAN")

% do macierzy jednostkowej
for w = 1:lw
    A(w, w) = A(w, w) / A(w, w);
end

A
disp("JEDNOSTKOWA")
