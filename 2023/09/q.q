p:get each read0`p                           / (p)uzzle input
f:{sum(x(1_deltas@)\[(not all not@);]@)@' y} / (f)unction to calc summation of extrapolated values (x:function to calc prev/next, y:puzzles)
a1:f[(sum last@')@;p]                        / part 1 ans: sum last number of each elements
-1 "part 1 ans: ",string a1;
a2:f[(({y-x}/)reverse first@')@;p]           / part 2 ans: get first number of each elements, reverse them and deltas
-1 "part 2 ans: ",string a2;
exit 0
