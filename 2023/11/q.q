p:"."=read0`p
c:{flip raze(where each not x),\:'til count x}
e:{y+(sums z*all x;sums z*all each x)@'y}
f:{$[1=count x[1;0];x;(x[0]+(sum/)abs x[1;;0]-r;r:1_'x 1)]}
a1:first f/[(0;e[p;c p;2-1])]
-1 "part 1 ans: ",string a1;
a2:first f/[(0;e[p;c p;1000000-1])]
-1 "part 2 ans: ",string a2;
exit 0
