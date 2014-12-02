female(pam).
female(liz).
female(ann).
female(pat).
female(julia).
male(tom).
male(bob).
male(jim).
male(clark).
male(tomaz).
parent(clark,ralph).
parent(ann,ralph).
parent(clark,julia).
parent(ann,julia).
parent(tom,tomaz).
parent(pam,tomaz).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

%% pai
father(X,Y):-male(X),parent(X,Y).
%% mae
mother(X,Y):-female(X),parent(X,Y).

%% irmao - não destingue meio-irmao
brother(X,Y):-male(X),parent(Z,X),parent(Z,Y).

%% irma - não destingue meio-irmao
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y).

%% tio: X é tio de Y?
uncle(X,Y):-male(X),brother(X,Z),parent(Z,Y).

%% tia: X é tia de Y?
aunt(X,Y):-female(X),sister(X,Z),parent(Z,Y).

%% meia-irmã
%% stepsister(X,Y):-female(X),