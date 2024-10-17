%1)find the sum of two integers
sum(X,Y,C) :- C is X + Y.

%2)find an integer is odd or even
odd(X) :-  X mod 2 =\= 0,write(odd).
even(X) :- X mod 2 =:= 0,write(even).
check_odd_even(X) :- odd(X);even(X).

%3)Display the word entered by the user
display_word :- write('Enter the word:'),read(X),write('Entered word is:'),write(X).

%4)read two integers and operation from user and find the output

ans(X,Y,sum,C):- C is X + Y.
ans(X,Y,sub,C):- C is X - Y.
ans(X,Y,mul,C):- C is X * Y.
ans(X,Y,div,C):- C is X / Y.

cal(C):-write('Enter first integer:'),read(X),nl,
         write('Enter second integer:'),read(Y),nl,
         write('Enter your operation:'),read(N),
         ans(X,Y,N,C).
