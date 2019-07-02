male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).
male(paul).
male(sam).

female(catherine).
female(elizabeth).
female(sophia).
female(claudia).
female(fay).

parent(charles1,james1).
parent(elizabeth,james1).
parent(charles2,charles1).
parent(catherine,charles1).
parent(james2,charles1).
parent(sophia,elizabeth).
parent(george1,sophia).
parent(george1,sam).
parent(catherine,fay).
parent(charles2,fay).
parent(james2,fay).
parent(sophia,paul).
parent(elizabeth,claudia).
parent(charles1,claudia).

married(james1,claudia).
married( claudia,james1).
married(charles1,fay).
married(fay,charles1).
married(elizabeth,paul).
married(paul,elizabeth).
married(sophia,sam).
married(sam,sophia).

father(Child,Dad):-male(Dad),parent(Child,Dad).

mother(Child,Mom):-female(Mom),parent(Child,Mom).

brother(Sibling,Bro):-male(Bro),father(Sibling,Father),father(Bro,Father),Bro\=Sibling,mother(Sibling,Mother),mother(Bro,Mother).

sister(Sibling,Sis):-female(Sis),father(Sibling, Father),father(Sis,Father),Sis\=Sibling,mother(Sibling,Mother),mother(Sis,Mother).

grandmother(Grandchild, Grandmother) :- female(Grandmother), parent(Grandchild, Parent), parent(Parent, Grandmother).

grandfather(Grandchild, Grandfather) :- male(Grandfather), parent(Grandchild, Parent), parent(Parent, Grandfather).

predecessors(Person, Predecessors) :- parent(Person, Parent), predecessors(Parent, Predecessors).

successors(Person,Successors):-parent(Successors,Someone),successors(Person,Someone).