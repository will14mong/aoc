p:read0`p                                                   / read (p)uzzle
s:string `one`two`three`four`five`six`seven`eight`nine      / (s)tring one - nine
n:1_.Q.n                                                    / (n)umber 1-9
f:{x k l?'(min;max)@'l:(first;last)@/:\:ss[y]each k:key x}  / get first & last num given (x:map, y:strings)
a1:sum "I"$f[m:string[n]!n]each p                           / part 1: convert string to int and sum 
-1 "part 1 ans: ",string a1;
a2:sum "I"$f[m,s!n]each p                                   / part 2: convert string to int and sum
-2 "part 2 ans: ",string a2;
exit 0
