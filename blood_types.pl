%% Blood types: A+,AB+,B+,O+,A-,AB-,B- and O-

%% ap = A+
%% an = A-
%% ...

%%%%%%%% Give table: %%%%%%%%%%%

%% A+ group:
give(ap,ap).
give(ap,abp).

%% O+ group:
give(op,ap).
give(op,op).
give(op,bp).
give(op,abp).

%% B+ group:
give(bp,bp).
give(bp,abp).

%% AB+ group:
give(abp,abp).

%% A- group:
give(am,am).
give(am,ap).
give(am,abp).
give(am,abm).

%% O- group:
give(on,ap).
give(on,abp).
give(on,bp).
give(on,op).
give(on,am).
give(on,abm).
give(on,bm).
give(on,om).

%% B- group:
give(bm,bm).
give(bm,bp).
give(bm,abp).
give(bm,abm).

%% AB- group:
give(abm,amb).
give(abm,abm).

%%%%%%%% Has table %%%%%%%%
%% put all relation (Name,Blood Type)
has(andre,on).
has(gustavo,bm).
has(fernanda,ap).
has(julia,abm).

%%%%%%%% Donor %%%%%%%%
%% donor(From,To)

donor(X,Y):-has(X,Z),has(Y,W),give(Z,W),X \= Y.
