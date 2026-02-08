%Colores disponibles
color(red).
color(blue).
color(yellow).
color(green).

%Dos regiones adyacentes no pueden tener el mismo color
adjacent(X, Y) :-
    X \= Y.

%Mapa según la imagen
map(A, B, C, D, E) :-
    color(A), color(B), color(C), color(D), color(E),

    adjacent(A, B), adjacent(A, D), adjacent(A, E),
    adjacent(B, C), adjacent(B, D), adjacent(B, E),
    adjacent(C, D), adjacent(C, E),
    adjacent(D, E).

%map(A, B, C, D, E).
%A = red,
%B = blue,
%C = red,
%D = yellow,
%E = green 
