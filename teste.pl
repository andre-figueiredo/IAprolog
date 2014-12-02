%%Aula 5 - slide 21
%% define a realacao max
%%max(X,Y,Max):- X>Y,Max=X.
%%max(X,Y,Max):- Y>X,Max=Y.
%
% Verifica qual é o último elemento da lista dada
ultimo([X],X).
ultimo([_|T],X):- ultimo(T,X).
%
% verifica se dois elementos sao consecutivos em uma lista
consecutivo(E1,E2,[E1,E2|_]).
consecutivo(E1,E2,[_|Cauda]):- consecutivo(E1,E2,Cauda).
%
% Soma elementos de uma lista dada
soma_ele([],0).
soma_ele([H|T],S):- soma_ele(T,S1), S is S1 + H.
%
% N-esimo elemento
% n_esimo(N,Elem,L)
n_esimo(1,Elem,[Elem|_]).
n_esimo(N,Elem,[_|T]):- n_esimo(M,Elem,T), M is M + 1.
%
% Numero de elementos de uma lista
n_elementos([],0).
n_elementos([H|T],N):- n_elementos(T,M), N is M + 1.
%
% Pega elementos de acordo com as posicoes de uma Lista
%pegar(<arg-1>,<arg-2>,<arg-3>)
%<arg-1>: lista de posicoes
%<arg-2>: lista
%<arg-3>: lista resultante
pegar([],_,[]).
pegar([H|T],L,[H1|T1]):- n_esimo(H,H1,L), pegar(T,L,T1).
%
% Outra forma de ver se tamanho da lista é par ou impar
par([]):- !.
par([_|T]):- impar(L),!.
impar([_]):- !.
impar([_]):- par(L),!.