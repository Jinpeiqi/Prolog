%Part 1
output :-
		writeln('----159.202 Assignmet 1----'), 
		writeln('ID:12207549 Name:jinpeiqi'), 
		writeln('----All 4 parts solved----').
		
%Part 2
likes(tom,jerry).
likes(mary,john).
likes(mary,mary).
likes(tom,mouse).
likes(jerry,jerry).
likes(jerry, cheese).
likes(mary,fruit).
likes(john,book).
likes(mary,book).
likes(tom,john).
%------------------Answer
%i)
isJohnlikesMary(X):- likes(mary,X).   
isJohnlikescheese(X):- likes(X,cheese).   
%ii)
%likes(mary,X).
%likes(john,X).
%likes(X,book).

%part 3 
%i)------------------------
% Some Greek gods
male(apollo).
male(ares).
male(cronus).
male(coeus).
male(hades).
male(hephaestus).
male(oceanus).
male(poseidon).
male(uranus).
male(zeus).
% Some Greek goddesses
female(aphrodite).
female(artemis).
female(demeter).
female(gaea).
female(hera).
female(hestia).
female(leto).
female(phoebe).
female(rhea).
%parents(person, father, mother)
parents(apollo, zeus,leto).
parents(cronus,uranus,gaea).
parents(coeus, uranus, gaea).
parents(ares, zeus,hera).
parents(phoebe, uranus, gaea).
parents(hestia,cronus,rhea).
parents(poseidon,cronus,rhea).
parents(hades,cronus,rhea).
parents(zeus,cronus,rhea).
parents(demeter,cronus,rhea).
parents(oceanus, uranus, gaea).
parents(hebe, zeus,hera).
parents(hephaestus, zeus,hera).
parents(artemis, zeus,leto).
parents(rhea, uranus,gaea).

brother(Person1, Person2):-male(Person1),
parents(Person1, Father, Mother),
parents(Person2, Father, Mother), Person1 \= Person2.
%-------------------------------------------------
sister(Person1, Person2):-female(Person1),
parents(Person1, Father, Mother),
parents(Person2, Father, Mother), Person1 \= Person2.

aunt(Person,Aunt):-female(Aunt),
parents(Person, Father, Mother),
(brother(Father,Aunt);sister(Mother,Aunt)).


son(Person1,Father):-male(Person1),
parents(Person1,Father, Mother).

%ii)----------------------------------
%-? aunt(apollo,Aunt).  demeter and hestia
%-? son(Son,zeus).     apollo  ares  hephaestus

%part 4
%woman(Name)
woman(anna).
woman(eve).
woman(carmela).
woman(luc).

%man(Name)
man(julie).
man(max).
man(marc).
man(hector).

%height(Name,Height)
height(eve,155).
height(carmela,159).
height(luc,170).
height(julie,165).

%hair(Name,Hair).
hair(anna,blond).
hair(eve,brunette).
hair(carmela,blonde).
hair(luc,red).

%ii) a)
petite(Name) :- height(Name,Height),
Height<160.

% b)
prefers(anna, Male) :- man(Male).


prefers(eve, Male) :- man(Male).



prefers(julie, Male) :- man(Male),
height(Male,X),
height(julie,Y),
X>Y.


prefers(luc, Female) :- woman(Female),
hair(Female,red).


prefers(max, Female) :- woman(Female) ,
petite(Female),
hair(Female, brunette).

prefers(marc, Female) :- woman(Female) ,
hair(Female, brunette).

prefers(hector, Female) :- woman(Female) ,
petite(Female),
hair(Female, blonde).


%iii)

%match(Male,Female)

match(Male,Female):-prefers(Male, Female),
prefers(Female,Male).


%iv)
%eg -? match(marc,X).




