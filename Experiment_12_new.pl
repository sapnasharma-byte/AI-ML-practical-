n_queens(N, Solution) :-
    place_queens(N, 1, [], Solution).

place_queens(N, Row, Placed, Solution) :-
    Row > N,
    reverse(Placed, Solution).

place_queens(N, Row, Placed, Solution) :-
    Row =< N,
    between(1, N, Col),
    safe(Col, Placed, 1),
    NextRow is Row + 1,
    place_queens(N, NextRow, [Col|Placed], Solution).

safe(_, [], _).

safe(Col, [PrevCol|Rest], Distance) :-
    Col =\= PrevCol,
    abs(Col - PrevCol) =\= Distance,
    NextDistance is Distance + 1,
    safe(Col, Rest, NextDistance).