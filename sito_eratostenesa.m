% Sito Eratostenesa
clear
clc

n = 100;

%%%

v = 1:n;
v(1) = -1;

% przebiegam wszystkie liczby
for liczba = 2:n
    % pomijam już wyrzucone
    if v(liczba) == -1
        continue
    end

    % wyrzucamy wszystkie podzielne przez liczbę
    for i = (liczba+1):n
        if rem(v(i), liczba) == 0
            v(i) = -1;
        end
    end
end

% wyrzucamy wszystkie -1
v(v == -1) = [];
