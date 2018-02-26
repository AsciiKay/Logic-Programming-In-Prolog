
/* 
 * Properties of Addition:
 * even number + even number = even number (2 complete numbers make a complete number)
 * odd number + odd number = even number (2 incomplete numbers make a complete number)
 * odd number + even number = odd number (and vice-versa) 
 * (A complete and in-complete number yields incomplete number)
*/

iseven(X) :-
    mod(X, 2) =:= 0.

isodd(Y) :- 
    mod(Y, 2) =\= 0.

even_addition(X, Y) :- 
	iseven(X) , iseven(Y) ; 
    isodd(X) , isodd(Y).

odd_addition(A, B) :- 
	not(even_addition(A, B)).
