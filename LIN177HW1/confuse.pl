confuse(X, Y) :-
    run(State, Z, X),
    run(State, Z, Y),
    X \= Y.
