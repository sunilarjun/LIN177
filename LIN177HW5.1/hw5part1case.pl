
% sentence
s --> np_nom, vp.
% noun phrase
np_nom --> pro_nom.
np_nom --> det, n.
np_obj --> pro_obj.
np_obj --> det, n.
% verb phrase with intransitive verb
vp --> v.
% verb phrase with transitive verb
vp --> v, np_obj.

% lexicon
det --> [the].
n --> [dog].
pro_nom --> [she].
pro_obj --> [her].
pro_nom --> [they].
pro_obj --> [them].
v --> [arrived].
v --> [see].
v --> [sees].

