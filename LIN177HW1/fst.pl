
% This is what we use to run the transducer
go(In, Out) :-
  initial(S),
  run(S, In, Out).

% This is how we know that we've reached the end of the run
run(State, [], []) :-
  final(State).

% Use a transition with no eps on either side
run(State, [X|In], [Y|Out]) :-
  transition(State, X, NextState, Y),
  X \= eps,
  Y \= eps,
  run(NextState, In, Out).

% use a transition with eps on the input side
run(State, In, [Y|Out]) :-
  transition(State, eps, NextState, Y),
  Y \= eps,
  run(NextState, In, Out).

% use a transition with eps on the output side
run(State, [X|In], Out) :-
  transition(State, X, NextState, eps),
  X \= eps,
  run(NextState, In, Out).

% We need one more run to handle eps on both sides(
run(State, In, Out) :-
     transition(State, eps, NextState, eps),
     run(NextState, In, Out).
