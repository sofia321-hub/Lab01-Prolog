%Miembro de una lista
miembro(X, [X|_]).       % X es la cabeza
miembro(X, [_|T]) :-     % X está en la cola
    miembro(X, T).
%miembro(4, [1,2,3]).
%false.


%Longitud de una lista
longitud([], 0).  
longitud([_|T], N) :-
    longitud(T, N1),
    N is N1 + 1.
%longitud([a,b,c], N).
%N = 3.



%Concatenar dos listas
concatena([], L, L).  % lista vacía
concatena([H|T], L2, [H|L3]) :-
    concatena(T, L2, L3).
%concatena([1,2], [3,4], R).
%R = [1,2,3,4].



%N primeros elementos de Fibonacci
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

fib_lista(0, []).
fib_lista(N, Lista) :-
    N > 0,
    N1 is N - 1,
    fib_lista(N1, L1),
    fibonacci(N1, F),
    append(L1, [F], Lista).
%fib_lista(5, L).
%L = [0,1,1,2,3].


%Reverso de una lista
reverso([], []).
reverso([H|T], R) :-
    reverso(T, RT),
    append(RT, [H], R).
%reverso([1,2,3], R).
%R = [3,2,1].


%Lista palíndroma
palindroma(L) :-
    reverso(L, L).
%palindroma([1,2,3,2,1]).
%true.
%palindroma([1,2,3]).
%false.

