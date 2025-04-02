
cancion(0) :-
    write('No more bottles of beer on the wall, no more bottles of beer.'), nl,
    write('Go to the store and buy some more, 99 bottles of beer on the wall.').

cancion(N) :-
    N > 0,
    write(N), write(' bottles of beer on the wall, '), write(N), write(' bottles of beer.'), nl,
    write('Take one down and pass it around, '),
    N1 is N - 1,
    (   N1 > 0 
    ->  write(N1), write(' bottles of beer on the wall.')
    ;   write('no more bottles of beer on the wall.')
    ),
    nl,
    cancion(N1).

iniciar :-
    cancion(99).
