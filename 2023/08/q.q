t:except[;" ()"]each read0`p                          / (t)ext from puzzle except " ()"
p:(!).(::;`$","vs')@'("S*";"=")0:2_t                  / (p)uzzle as dictionary from key -> 2 item list
d:"LR"?t 0;                                           / (d)irection 0 (left), 1 (right)
f:{count[d]*first x{(1+y 0;y[1]{p[x]y}/x)}[d]/(0;y)}  / (f)unction to count how many steps given (x:termination condition, y:starting node)
gcd:{$[y;.z.s[y;x mod y];x]}                          / (gcd) greatest common denominator function
lcm:{7h$(x*y)%gcd[x;y]}                               / (lcm) least common multiplier function 
a1:f[{not`ZZZ=x 1}] `AAA                              / part 1: stop when ZZZ is reached starting from AAA
-1 "part 1 ans: ",string a1;
a:key[p]@where key[p]like"??A"                        / a:nodes ending with A
a2:(lcm/)f[{not any x[1]like"??Z"}]each a             / part 2: find num of steps for each a and find the lcm of those
-1 "part 2 ans: ",string a2;
exit 0
