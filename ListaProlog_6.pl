% Uma sequencia e palindromo se a inversa eh igual a lista original
% A inversa de H|T eh a inversa de T concatenada com H
inversa([],[]).
inversa([H|T],L):- inversa(T,R),append(R,[H],L).
palindromo(L):-inversa(L,L).