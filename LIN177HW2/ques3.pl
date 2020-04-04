transition(0, Phoneme, 0, Phoneme):- Phoneme \= 1.
transition(0, 1, 1, 1).
transition(1, Phoneme, 0, Phoneme):- Phoneme \= "p".
transition(1, Phoneme, 0, Phoneme):- Phoneme \= "k".
transition(1, Phoneme, 0, Phoneme):- Phoneme \= "t".
transition(0, p, 2, p_h).
transition(0, k, 2, k_h).
transition(0, t, 2, t_h).
transition(2, Phoneme, 3, Phoneme):- Phoneme \= 1.
transition(3, 1, 1, 1).
initial(0).
final(3).


