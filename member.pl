% X pertence a lista
member(X,[X|_]).
member(X,[_|T]):- member(X,T).