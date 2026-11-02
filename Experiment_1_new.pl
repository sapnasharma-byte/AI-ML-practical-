%student
student(rahul).
student(priya).
student(amit).

%course
course(ai).
course(prolog).
course(python).

%enrolled student
enrolled(rahul, ai).
enrolled(rahul, prolog).
enrolled(priya, python).
enrolled(amit, ai).
student_enrolled(Student, Course) :-
    student(Student),
    course(Course),
    enrolled(Student, Course).
