% bisekcja f. ciągłej
clear
clc

% funkcja, dla której szukamy miejsc zerowych
f = @(x) -x^3 - x^2 + 2*x + 1;

a = -2.5;
b = -1;

% instrukcja if:
% if wyrazenie_logiczne
%   ...
% else
%   ...
% end
%
% każda wartość inna od 0 jest prawdziwymi wyrażeniami logicznymi
% a także macierze z samymi niezerowymi wartościami

% pętla while:
% while wyrazenie_logiczne
%   ...
% end

n = 54

for i = 1:n
    a;
    b;

    % dzielimy na pół przedział
    c = (a + b) / 2;

    % sprawdzamy, w którym przedziale jest pierwiastek
    % pierwiastek jest w przedziale [a; c], jeśli f(a) * f(c) < 0
    % (tzn. funkcja zmienia znak na przedziale - przecina OX)
    
    % czy jest w lewej połowie? [a; c]
    if f(a) * f(c) < 0
        % będę szukał dalej w [a; c]
        b = c;
    else  % jeśli nie ma w lewej (musi być w drugiej)
        % będę szukał dalej w [c; b]
        a = c;
    end
end

c
f(c)

% dokładność przybliżenia
dokl = b - a