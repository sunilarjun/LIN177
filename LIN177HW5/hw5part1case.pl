% sentence
s --> np_nom1, vp_tran1.
s --> np_nom2, vp_tran2.
s --> pro_nom1, v_tran1.
s --> pro_nom2, v_tran2.

% noun phrase
np_nom1 --> pro_nom1.
np_nom2 --> pro_nom2.
%np_nom1 --> det, n.
np_nom2 --> det, n.

np_obj --> pro_obj.
np_obj --> det, n.

% verb phrase with intransitive verb
vp_tran2 --> v_intra.
vp_tran1 --> v_intra.



% verb phrase with transitive verb
%vp_tran1 --> v_tran1, np_nom1.
%vp_tran2 --> v_tran2, np_nom2.
vp_tran1 --> v_tran1, np_obj.
vp_tran2 --> v_tran2, np_obj.

% lexicon

det --> [the].
n --> [dog].
pro_nom2 --> [she].
pro_obj --> [her].
pro_nom1 --> [they].
pro_obj --> [them].
v_intra --> [arrived].
v_tran1 --> [see].
v_tran2 --> [sees].


