edge(a,b).
edge(a,c).
edge(b,d).
edge(c,e).
edge(d,f).
edge(e,f).
connected(X,Y) :-
    edge(X,Y).
connected(X,Y) :-
    edge(Y,X).

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath), 
    reverse(RevPath, Path).
bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).
bfs_queue([[Node|Rest]|Queue], Goal, Path) :-
    findall(         [Next,Node|Rest],
        (connected(Node,Next), \+ member(Next,[Node|Rest])), NewPaths ),
    append(Queue, NewPaths, NewQueue),     
    bfs_queue(NewQueue, Goal, Path).
