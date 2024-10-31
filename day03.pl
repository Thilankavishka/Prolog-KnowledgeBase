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

%5 output integers from first to last
output(Last,Last) :- write(Last),nl,write('End of Example'),nl.
output(First,Last) :- First=\=Last,write(First),nl,N is First+1,output(N,Last).


%6 sum the integers from 1 to N
sum(1,1).
sum(N,S) :- N>1,N1 is N-1,sum(N1,S1),S is S1+N,write(S),nl.

%7)output first N squares, one per line
writesquares(1):-write(1),nl.
writesquares(N):-N>1,N1 is N-1,writesquares(N1),Nsq is N*N,write(Nsq),nl.


%8)read terms entered by the user from the keyboard and output them to the screen until  end is encountered
go:-loop(start).
loop(end).
loop(X):-X\=end,write('Type end to end:'),read(W),write('Input was:'),write(W),nl,loop(W).


%9)find factorial of a positive integer N
fact(1,1).
fact(N,F):- N>1,N1 is N - 1,fact(N1,F1),F is F1*N.
