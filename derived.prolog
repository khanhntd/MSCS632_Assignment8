% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Sibling
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Cousin
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.