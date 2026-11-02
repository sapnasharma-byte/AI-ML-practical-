faculty(ramesh, ai).
faculty(suresh, python).
faculty(neha, prolog).
subject(ai).
subject(python).
subject(prolog).
classroom(ai, room101).
classroom(python, room102).
classroom(prolog, room103).
timetable(monday, 10, ai, ramesh, room101).
timetable(monday, 11, python, suresh, room102).
timetable(tuesday, 10, prolog, neha, room103).

class_at(Day, Time, Subject, Faculty, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).
