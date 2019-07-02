member(X,[X|_]).
member(X,[_|R]) :- member(X,R).