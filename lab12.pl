edge('Dammam', 'Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Taif', 'Dammam').
edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Qatif', 'Madinah').
edge('Qatif', 'Dammam').
edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

travel(First, Last, Path) :-
    path(First, Last, [First], P),
    reverse(P, Path).

path(X, X, P, P).

path(Start, End, Visited, Path) :-
    edge(Start, X),
    \+ member(X, Visited),
    path(X, End, [X | Visited], Path).
