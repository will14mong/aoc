p:get@'last(" *";":")0:`p                                / (p)uzzle
w:{-1+(-/)(ceiling;floor)@'.5*x+/:(neg\)sqrt(x*x)-4*y}   / (w)inning ways, find range x = (-b +/- sqrt(b^2 - 4ac)) % 2a
a1:prd w . p                                             / part 1: product of all the posible ways
-1 "part 1 ans: ",string a1;
a2:w . "J"$raze each string p                            / part 2: combine number into single digit and calculate winning ways 
-1 "part 2 ans: ",string a2;
exit 0
