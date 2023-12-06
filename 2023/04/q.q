p:(get')@'" | "vs/:last("**";":")0:`p   / (p)uzzle as list of 2 integer sets
c:(sum(in).)'                           / (c)ount intersection
a1:sum floor .5*2 xexp i:c p            / part 1: count each intersection and sum them
-1 "part 1 ans: ",string a1;
f:{@[x;z+til 1+y;+;n:1+0,y#x z]}        / (f)unction to count scratch cards after each game (x:list of card counts, y:nth game)
a2:sum f/[n#0;i;til n:count p]          / part 2: count cards over each game and sum them in the final step
-1 "part 2 ans: ",string a2;
exit 0
