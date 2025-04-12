% Child
child(X, Y) :- parent(Y, X).

% Children of a particular person
children(Person, Children) :-
    findall(Child, parent(Person, Child), Children).

% Siblings of a particular person
siblings(Person, Siblings) :-
    findall(Sib, (sibling(Person, Sib)), Siblings).

% Check if one person is a cousin of another
is_cousin(X, Y) :-
    cousin(X, Y).