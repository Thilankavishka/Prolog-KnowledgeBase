parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
female(liz).
female(pat).
female(ann).

male(tom).
male(bob).
male(jim).


%7
mother(X,Y) :- parent(X,Y),female(X).

%8
father(X,Y) :- parent(X,Y),male(X).

%9
sister(X,Y) :- parent(M,X),parent(M,Y),female(X),not(X==Y).

%10
brother(X,Y) :- parent(M,X),parent(M,Y),male(X),not(X==Y).

%11
grandparent(X,Y) :- parent(X,N),parent(N,Y).

%12
grandfather(M,N) :- parent(M,X),parent(X,N),male(M).

%13
grandmother(M,N) :- parent(M,X),parent(X,N),female(M).

%14
grandchild(X,Y) :- parent(M,X),parent(Y,M).

%15
grandson(X,Y) :- parent(Y,M),parent(M,X),male(X).

%16
granddaughter(M,N) :- parent(N,X),parent(X,M),female(M).

%17
happy(X) :- parent(X,_).

%18
twochild(X) :- parent(X,Y),parent(X,Z),sister(Z,Y).

%19
aunt(X,Y) :- parent(M,Y),sister(X,M).

%20
uncle(X,Y) :- parent(M,Y),brother(X,M).

