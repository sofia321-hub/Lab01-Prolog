% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).


%Regla: reprueba si nota < 3.0
reprueba(X) :- nota(X, N), N < 3.0.

%reprueba(X).
%luis 
%pedro


%Regla: aprueba si nota >= 3.0
aprueba(X) :- nota(X, N), N >= 3.0.

%aprueba(X).
%ana 
%maria 
%juan


%Regla: nota en un rango
rango(X, Min, Max) :-
    nota(X, N),
    N >= Min,
    N =< Max.

%rango(X, 3.0, 4.0).
%maria.


%Regla: clasificación por categoría
clasificacion(X, reprobado) :- nota(X, N), N < 3.0.
clasificacion(X, aprobado)  :- nota(X, N), N >= 3.0, N < 4.0.
clasificacion(X, notable)   :- nota(X, N), N >= 4.0, N < 4.5.
clasificacion(X, excelente) :- nota(X, N), N >= 4.5.

%clasificacion(X, C).
% X = ana,   C = excelente 
% X = luis,  C = reprobado 
% X = maria, C = aprobado 
% X = juan,  C = excelente 
% X = pedro, C = reprobado



%Distancia euclidiana
distancia((X1,Y1),(X2,Y2),D) :-
    DX is X2 - X1,
    DY is Y2 - Y1,
    D is sqrt(DX*DX + DY*DY).

%distancia((0,0),(3,4),D).
%5.0.


%Distancia total en una lista de puntos
distancia_total([], 0).
distancia_total([_], 0).
distancia_total([P1,P2|R], Total) :-
    distancia(P1,P2,D),
    distancia_total([P2|R], T),
    Total is D + T.

%distancia_total([(0,0),(3,4),(6,8)], D).
%10.0.

