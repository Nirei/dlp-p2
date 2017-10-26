factorial(0,Result) :-
	Result is 1.
factorial(N,Result) :-
	N > 0,
	N1 is N-1,
	factorial(N1,Result1),
	Result is Result1*N.

esHijo(juan,javier).
esHijo(luis,javier).
esHijo(pedro,manuel).
esHijo(jorge,manuel).


haceSol.

