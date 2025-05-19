% obliczanie ilości iteracji dla bisekcji o danej dokładności
clear
clc

% przedział
a = -2.5;
b = -1;

% dokładność (długość przedziału)
d = b - a;

% dokładność, do której dążę
d_0 = 1e-16

% ile razy trzeba dzielić
n = 0;
while d >= d_0
    d = d / 2;
    n = n + 1;
end

d
n
