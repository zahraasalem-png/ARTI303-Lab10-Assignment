% Task 1
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, Side1, Side2, Area, Perimeter) :-
    Area is (Base * Height) / 2,
    Perimeter is Base + Side1 + Side2.

% Task 2
user(ali, 1234).
user(sara, 5678).

login :-
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you used all your available attempts, try again later.').

login_attempts(N) :-
    N > 0,

    write('Enter username: '),
    read(Username),

    write('Enter password: '),
    read(Password),

    ( user(Username, Password) ->
        write('Login Successful')

    ;
        write('Login Unsuccessful'),
        nl,
        Remaining is N - 1,
        login_attempts(Remaining)
    ).

