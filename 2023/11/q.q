p:"."=read0`p                                                 / (p)uzzle
c:{flip raze(where each not x),\:'til count x}                / (c)oordinates where there is galaxies
e:{y+(sums z*all x;sums z*all each x)@'y}                     / (e)xpand galaxies
f:{$[1=count x[1;0];x;(x[0]+(sum/)abs x[1;;0]-r;r:1_'x 1)]}   / (f)unction to find the summation of all pair distances
a1:first f/[(0;e[p;c p;2-1])]                                 / part 1: expand by 2
-1 "part 1 ans: ",string a1;
a2:first f/[(0;e[p;c p;1000000-1])]                           / part 2: expand by 1000000
-1 "part 2 ans: ",string a2;
exit 0
