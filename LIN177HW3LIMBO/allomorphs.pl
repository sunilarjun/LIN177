transition(1, '#', 1, '#').
transition(1, '^', 1, eps).
transition(1, S, 1, S) :-
    S \= eps,
    S \= '#',
    S = sibilant(S),
    S = voiced(S),
    S \= '^'.

% ENTER ADDITIONAL TRANSITIONS HERE
transition(1, S, 2, S) :-
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

transition(2, S, 1, S) :-
    S \= voiced(S),
    S \= eps,
    S \= '^'.
transition(2, S, 2, S) :-
    S \= p,
    S \= k,
    S \= f,
    S \= th,
    S \= t,
    S \= ch,
    S \= jh,
    S \= z,
    S \= zh,
    S \= sh,
    S \= '^',
    S \= voiced(S).
transition(2, '^', 3, eps).
transition(3, s, 4, z).
transition(4, '#', 1, '#').

transition(1, S, 5, S) :-
    S = ch;
    S = sh;
    S = jh;
    S = z;
    S = zh.
transition(5, S, 1, S) :-
    S \= sibilant(S),
    S \= eps,
    S \= '^'.
transition(5, S, 5, S) :-
    S \= '^',
    S \= sibilant(S).
transition(5, '^', 6, eps).
transition(6, s, 7, ah).
transition(7, eps, 8, z).
transition(8, '#', 1, '#').

transition(1, S, 9, S) :-
    S = p;
    S = t;
    S = k;
    S = f;
    S = th.
transition(9, S, 1, S) :-
    S \= sibilant(S),
    S \= voiced(S),
    S \= eps,
    S \= '^'.
transition(9, ^, 10, eps).
transition(10, s, 11, s).
transition(11, '#', 1, '#').

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
