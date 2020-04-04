% sentence
s --> np_nom1, vp_tran1.
s --> np_nom2, vp_tran2.

% noun phrase
np_nom1 --> pro_nom1.
np_nom2 --> pro_nom2.
np_nom1 --> det, n.
np_nom2 --> det, n.

np_obj --> pro_obj.
np_obj --> det, n.

% verb phrase with intransitive verb
vp --> v_intra.
vp --> v_intra, np_obj.


% verb phrase with transitive verb
vp_tran1 --> v_tran1, np_nom1.
vp_tran2 --> v_tran2, np_nom2.
vp_tran2 --> v_intra.
vp_tran1 --> v_intra.
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




% sentence
s --> np_nom1, vp_tran1.
s --> np_nom2, vp_tran2.

% noun phrase
np_nom1 --> pro_nom1.
np_nom2 --> pro_nom2.
np_nom1 --> det, n.
np_nom2 --> det, n.

np_obj1 --> pro_obj1.
np_obj1 --> det, n.
np_obj2 --> pro_obj2.
np_obj2 --> det, n.


% verb phrase with intransitive verb
vp_tran1 --> v_intra.
vp_tran1 --> v_intra, np_obj1.

vp_tran2 --> v_intra.
vp_tran2 --> v_intra, np_obj2.



% verb phrase with transitive verb
vp_tran1 --> v_tran1, np_nom1.
vp_tran2 --> v_tran2, np_nom2.
vp_tran2 --> v_intra.
vp_tran1 --> v_intra.
vp_tran1 --> v_tran1, np_obj1.
vp_tran2 --> v_tran2, np_obj2.

% lexicon

det --> [the].
n --> [dog].
pro_nom2 --> [she].
pro_obj2 --> [her].
pro_nom1 --> [they].
pro_obj1 --> [them].
v_intra --> [arrived].
v_tran1 --> [see].
v_tran2 --> [sees].


% sentence
s --> np_nom, intra_vp.
s --> np_nom, tran_vp.

% noun phrase
np_nom --> pro_nom.
np_nom --> det, n.
np_obj --> pro_obj.
np_obj --> det, n.

% verb phrase with intransitive verb
intra_vp --> intra_v.

% verb phrase with transitive verb
tran_vp --> tran_v, np_obj.

% lexicon

det --> [the].
n --> [dog].
pro_nom --> [she].
pro_obj --> [her].
pro_nom --> [they].
pro_obj --> [them].
intra_v --> [arrived].
tran_v --> [see].
tran_v --> [sees].
