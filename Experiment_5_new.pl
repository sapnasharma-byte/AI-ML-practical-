marks(rahul, 92).
marks(priya, 78).
marks(amit, 45).
marks(neha, 30).
performance(Student, topper) :-
    marks(Student, M),
    M >= 85.
performance(Student, average) :-
    marks(Student, M),
    M >= 50,
    M < 85.
performance(Student, failed) :-
    marks(Student, M), 
    M < 50.
