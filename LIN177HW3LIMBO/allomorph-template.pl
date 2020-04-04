transition(1, '#', 1, '#').
transition(1, '^', 1, eps).
transition(1, S, 1, S) :-
    S \= eps,
    S \= '#',
    S = sibilant(S),
    S = voiced(S),
    S \= '^'.

% ENTER ADDITIONAL TRANSITIONS HERE
transition(1, S, 2, voi) :-
    S = voiced(S).

transition(2, S, 1, oth) :-
    S \= voiced(S),
    S \= eps,
    S \= '^'.
transition(2, S, 2, S) :-
    S = voiced(S).
transition(2, ^, 3, eps).
transition(3, s, 4, z).
transition(4, '#', 1, '#').

initial(1).
final(1).

% potentially useful features from IPA

voiced(S) :-
    S = aa;
    S = ae;
    S = ah;
    S = ao;
    S = aw;
    S = ay;
    S = b;
    S = d;
    S = dh;
    S = eh;
    S = g;
    S = v;
    S = oy;
    S = m;
    S = n;
    S = ng;
    S = l;
    S = r;
    S = zh.

sibilant(S) :-
    S = ch;
    S = s;
    S = sh;
    S = jh;
    S = z;
    S = zh.

nonsibilant(S) :-
    not(sibilant(S)).
