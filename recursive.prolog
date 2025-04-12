% Base case: direct child
descendant(X, Y) :- parent(Y, X).

% Recursive case: indirect descendant
descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).