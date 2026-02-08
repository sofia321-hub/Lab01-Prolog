% Hechos: vueloa directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

%Regla: conexión con una escala
escala(A, B) :-
    vuelo(A, X),
    vuelo(X, B),
    A \= B.

%escala(bogota, barranquilla).
%true.

%escala(cali, X).
%medellin 
%cartagena 
%pasto 
%barranquilla


%Regla: viaje directo o con escala
viaje(A, B) :- vuelo(A, B).
viaje(A, B) :- escala(A, B).

%viaje(bogota, pasto).
%true.


%Regla: destinos directos
destinos(A, B) :- vuelo(A, B).

%destinos(bogota, X).
%medellin 
%cartagena 
%pasto

perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

%Regla: persona tiene perro
tiene_perro(P) :- dueno(P, M), perro(M).

%tiene_perro(X).
%ana 
%luis 
%pedro


%Regla: persona tiene gato
tiene_gato(P) :- dueno(P, M), gato(M).

%tiene_gato(X).
%ana 
%luis 
%julia


%Regla: persona con múltiples mascotas
mascota_multiple(P) :-
    dueno(P, M1),
    dueno(P, M2),
    M1 \= M2.

%mascota_multiple(X).
%ana 
%luis.


%Regla: amante de animales (perro y gato)
amante_animales(P) :-
    tiene_perro(P),
    tiene_gato(P).

%amante_animales(X).
%ana 
%luis


%Regla: mascota compartida
mascota_compartida(P1, P2) :-
    dueno(P1, M),
    dueno(P2, M),
    P1 \= P2.

%mascota_compartida(ana, luis).
%true.


%Regla: tipo de mascota
tipo_mascota(P, perro) :- dueno(P, M), perro(M).
tipo_mascota(P, gato)  :- dueno(P, M), gato(M).
tipo_mascota(P, ave)   :- dueno(P, M), ave(M).

%tipo_mascota(luis, T).
%gato 
%perro

