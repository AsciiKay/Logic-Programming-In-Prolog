
/*
 * Natural Numbers = {1, 2, 3, ...}
 * Whole Numbers = {0, 1, 2, 3, ...}
 * Integers = {..., -2, -1, 0, 1, 2, ...}
 * Rational Numbers = integer(a) / integer(b) where b =\= 0
 * Real Numbers = {Naturals, WholeNaturals, Integers, Rationals}
*/

isNatural(X) :- 
    X > 0.

isWhole(N) :-  
    N >= 0.

isInteger(Z) :- 
    isWhole(Z) ; not(isWhole(Z)).

/*
 *  N -> Numerator 
 *  D -> Denominator
*/
isRational(N, D) :- 
	isInteger(N) , isInteger(D), not(isWhole(D)).

isReal(S, D) :- 
    isRational(S, D) , isInteger(S).
