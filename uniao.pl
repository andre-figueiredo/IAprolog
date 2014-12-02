% Recebe duas listas L1 e L2 e mostra L3
% L3 é a união ordenada(sem repetição) de L1 e L2
concatenar().
%
%
%
% Retirar todos elementos repetidos
retirar_todos(_,[],[]).
retirar_todos(Elem,[Elem|Cauda],L):- retirar_todos(Elem,Cauda,L).
retirar_todos(Elem,[Elem1|Cauda],[Elem1|Cauda1]):- Elem \== Elem1,
												retirar_todos(Elem,Cauda,Cauda1).
% 1. Uma lista vazia não tem elementos repetidos
% 2. Retirar os elementos repetidos de uma lista [Elem|Cauda]
% significa criar uma nova lista que possua somente um Elem e sua
% calda não tenha elementos repetidos
retirar_rep([],[]).
retirar_rep([Elem|Cauda],[Elem|Cauda1]):- retirar_todos(Elem,Cauda,Lista),
										  retirar_rep(Lista,Cauda1).
%
%
uniao(L1,L2,U):- concatenar(L1,L2,L3), retirar_rep(L3,U).