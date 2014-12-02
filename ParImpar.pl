%Aula 6 - slide 18
tamanhoL([], 0).
tamanhoL([_|R], I):- tamanhoL(R, I1), I is I1 + 1.
par(Lista):- tamanhoL(Lista,X), X mod 2 =:= 0.
impar(Lista):- tamanhoL(Lista,X), X mod 2 =:= 1.