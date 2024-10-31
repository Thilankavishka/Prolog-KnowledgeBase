%cut.

%omit the unwanted backtracking

sumto(1,1):-!.
sumto(N,S):- N1 is N-1,sumto(N1,S1),S is S1+N.


%Repeat
%start again from the failed clause
validate(10).
getvalue:-repeat,write('Enter the value 10'),
	  nl,read(Value),validate(Value),
	  write('Answer is '),write(Value),!.


valid(yes).
valid(no).
getmsg:-write('Enter the answer'),nl,
	repeat,write('Enter only yes or no:'),read(Ans),
	valid(Ans),nl,write('End!!').

%if control structure.
check_number(X):-
	(   X>0
	->  write('The number is positive')
	;   ( X < 0
	->  write('The number is Negative')
	;   write('The number is zero'))
	).
