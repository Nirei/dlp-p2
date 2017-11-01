% base de hechos

% mujeres
mujer(sara).
mujer(selena).
mujer(silvia).
mujer(sonia).
mujer(susana).

% varones
hombre(jaime).
hombre(jeronimo).
hombre(jimeno).
hombre(jorge).
hombre(julian).

% parentescos explícitos: padres(hijo, progenitor1, progenitor2)
padres(susana, jaime, sara).
padres(julian, jeronimo, selena).
padres(silvia, julian, susana).
padres(jimeno, jorge, sonia).

% parentescos derivados (logicamente deductibles)
hija(X,Y) :- mujer(X), padres(X,Y,_).
hija(X,Y) :- mujer(X), padres(X,_,Y).
hijo(X,Y) :- hombre(X), padres(X,Y,_).
hijo(X,Y) :- hombre(X), padres(X,_,Y).
abuelx(X,Z) :- padres(Z,Y,_), padres(Y,X,_).
abuelx(X,Z) :- padres(Z,_,Y), padres(Y,X,_).
abuelx(X,Z) :- padres(Z,Y,_), padres(Y,_,X).
abuelx(X,Z) :- padres(Z,_,Y), padres(Y,_,X).
abuelo(X,Y) :- hombre(X), abuelx(X,Y).
abuela(X,Y) :- mujer(X), abuelx(X,Y).
