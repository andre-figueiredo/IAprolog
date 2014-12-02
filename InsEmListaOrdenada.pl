% Slide 19 - Aula 6
% Insere um dado numero em uma lista ordenada.
% ins(X,L,L1)===>Insere X na lista ordenada L formando a nova lista ordenada L1
ins(X,[],[X]).
ins(X,[H|T],[X,H|T]):- X < H.
ins(X,[H|T],[H|T1]):- X > H, ins(X,T,T1).