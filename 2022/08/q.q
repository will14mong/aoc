p:"I"$''read0 `input.txt                        / read input as int matrix
f:{-1>':maxs x}                                 / running maxs on vectors from top-bottom 
c:flip reverse@                                 / rotate clockwise
cc:reverse flip@                                / rotate counter-clockwise

a1:(+//)(|/)til[4] c/'f@/:(cc\)p                / rotate clockwise, apply f, rotate counter-clockwise, do max and sum it all
-1 "Part one answer is: ",string a1;

r:{k:$[count a:1_x;                             / find how many trees the current row can view
      1+(0<=flip[a]-first x)?'1b;
      (count first x)#0];
   :0|count[a]&k}
d:{r@/:-1_(1_)\[x]}                             / find for all rows

a2:(|//)(*/)til[4] c/'d@/:(cc\)p                / rotate clockwise, apply d, rotate counter-clockwise, do multiply and get max
-1 "Part two answer is: ",string a2;

exit 0
