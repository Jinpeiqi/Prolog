%Part A
output :-
		writeln('----159.202 Assignmet 1----'), 
		writeln('ID:12207549 Name:jinpeiqi'), 
		writeln('----All 4 parts solved----').
%Part B
:-op(500,xfx,(=>>)).
=>>(X,Y):- (X =:= Y/2;X=:=Y*2).

:-op(500,fx,(isSingleton)).
isSingleton[X]:- [X]=[_].


%Part C
%a)
totalInList([],0).
totalInList([H|T],N):- totalInList(T,N2),
N is N2+H.

%b)
count(X,[],0).
count(X,[X|T],N):-count(X,T,N1),
N is N1+1.
count(X,[H|T],N):-count(X,T,N1),
N is N1.

%c)
adjAVE([],[]).
adjAVE([_],[]).
adjAVE([H,T|T2],[Avg|B]):- 
	Avg is (H+T)/2,
	adjAVE(T2,B).


%d)
%i)
word(one,un).
word(two,deux).
word(three,trois).
word(four,quatre).
word(five,cinq).
word(six,six).
word(seven,sept).
word(eight,huit).
word(nine,neuf).
word(ten,dix).

translate([],[]).
translate([H1|T1],[H2|T2]):-word(H1,H2),translate(T1,T2).




generateSq(SQ)	:-	fillSq(SQ), testSq(SQ), displaySq(SQ).

isDifferent(A,B,C,D)	:-	A \= B, A \= C , A \= D, 
				B \= C, B \= D,
				C \= D.

fillSq(SQ)	:-	SQ = [One,Two,Three,Four],
			
			permutation([a,b,c,d],One),
			permutation([a,b,c,d],Two),
			permutation([a,b,c,d],Three),
			permutation([a,b,c,d],Four).

testSq(SQ)	:-	SQ = [[One1, One2, One3, One4], 
			[Two1, Two2, Two3, Two4], 
			[Three1, Three2, Three3, Three4], 
			[Four1, Four2, Four3, Four4]],

			isDifferent(One1, Two1, Three1, Four1),
			isDifferent(One2, Two2, Three2, Four2),
			isDifferent(One3, Two3, Three3, Four3),
			isDifferent(One4, Two4, Three4, Four4).

displaySq(SQ)	:-	SQ = [[One1, One2, One3, One4], 
			[Two1, Two2, Two3, Two4], 
			[Three1, Three2, Three3, Three4], 
			[Four1, Four2, Four3, Four4]],

			nl,
			tab(10), writeln('----------------'),
			tab(10),
			write('| '), write(One1), 
			write(' | '), write(One2),		
			write(' | '), write(One3),
			write(' | '), write(One4), writeln(' |'),

			tab(10), writeln('----------------'),
			tab(10),
			write('| '), write(Two1),
			write(' | '), write(Two2),		
			write(' | '), write(Two3),
			write(' | '), write(Two4), writeln(' |'),

			tab(10), writeln('----------------'),
			tab(10),
			write('| '), write(Three1),
			write(' | '), write(Three2),		
			write(' | '), write(Three3),
			write(' | '), write(Three4), writeln(' |'),

			tab(10), writeln('----------------'),
			tab(10),
			write('| '), write(Four1),
			write(' | '), write(Four2),		
			write(' | '), write(Four3),
			write(' | '), write(Four4), writeln(' |'),
			tab(10), writeln('-----------------').
