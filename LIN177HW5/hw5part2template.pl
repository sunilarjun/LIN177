% sentence
%
% N contains the features of the NP
% V contains the features of the VP
%
s(F) --> np(N), vp(V),
    {
      % the VP is the head of this sentence,
      % so we get F from V.
      F = V,

      % make sure case(nom) is in N
      % (NP with nominative case)
      member(case(nom), N),

      % ADD AGREEMENT CHECK HERE
      np --> n, np(N), { member(case(nom), N) },

      % now we make N the subject of F
      member(subj(N), F)
    }.

% noun phrase
np(F) --> det(D), n(N),
    {
      % first we get the value of def for
      % the determiner (this will match
      % the variable A)
      member(def(A), D),

      % now we make sure N doesn't yet have
      % a def value
      not(member(def(_), N)),

      % finally we make F from def(A) and
      % N. F will have the same def(A) as D,
      % plus everything in N. Because def(A)
      % is a list element and N is a list, we
      % can use the [Head|Tail] notation here
      F = [def(A)|N]
    }.

% when the NP is made of a pronoun, it just
% gets the features of the pronoun
np(F) --> pro(F).

% verb phrase with intransitive verb
vp(F) --> v(F),
    % here we make sure that the verb does
    % not take an object (that means, there
    % is no obj(_) in F, where _ can match
    % anything.
    {
          % ADD YOUR CODE HERE
          not(member(obj(_), v))
    }.

% verb phrase with transitive verb
vp(F) --> v(F), np(N),
    {
      % first make sure that N has case(obj)
      % ADD YOUR CODE HERE
      member(case(obj), N),
      % then make N the object of F
      % ADD YOUR CODE HERE
      member(obj(N), F)

    }.

% lexicon

% the determiner the just add the feature def(+)
det(F) --> [the],
    { F = [def(+)] }.

% predicate dog, third person singular, can be any case
n(F) --> [dog],
    { F = [pred(dog), num(sg), pers(third), case(_)] }.

% pronoun, third person singular, nominative case
pro(F) --> [she],
    { F = [pred(pro), num(sg), pers(third), case(nom)] }.

pro(F) --> [her],
    { F = [pred(pro), num(sg), pers(third), case(obj)] }. % ADD LEXICAL FEATURES

pro(F) --> [they],
    { F = [pred(pro), num(sg), pers(third), case(nom)] }.

pro(F) --> [them],
    { F = [pred(pro), num(sg), pers(third), case(obj)] }.

v(F) --> [arrived],
    { F = [pred(arrive), tense(past), pers(third), num(sg), subj(_), obj(_)] }.

v(F) --> [see],
    { F = [pred(see), tense(pres), pers(P), num(N), subj(_), obj(_)],

      % either number is not singular, or person is not third.
      % dif/2 makes sure the two arguments won't be the same
      (dif(N,sg); dif(P,third)) }.

v(F) --> [sees],
    { F = [pred(see), tense(pres), pers(third), num(sg), subj(_), obj(_)] }.

