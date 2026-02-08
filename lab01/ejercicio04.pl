
%Caso base 1
fibonacci(0, 0).
%fibonacci(0, F).
%0.

%Caso base 2
fibonacci(1, 1).
%fibonacci(1, F).
%1.

%Caso recursivo
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.
%fibonacci(6, F).
%8.
