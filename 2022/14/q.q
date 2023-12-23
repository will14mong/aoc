p:(get@'" -> "vs)@/:read0 `input.txt
cd:{sums(1#x),raze(max flip abs s)#'enlist@'1&-1|s:1_(-':)x}    / all coordinates
r:asc@'last[l] group first l:flip distinct raze cd@'p           / dict of x -> sorted distinct y
m:max max each r;                           / floor 

f:{  / x: floor, y: (X,Y) coordinate
  X:y 0;Y:y 1;                              / set X,Y
  Y:(r[X],x) binr[r X;Y];                   / drop til nearest floor
  :$[Y=0;(X;Y);                             / return (X;Y) if Y=0, can't drop anymore sand
     Y=x;(X;Y-1);                           / return (X;Y-1) if drop til floor Y
     all i:Y in/:r[l:-1 1+X];(X;Y-1);       / if can't go left/right, stay there
     (l first where not i;Y)];              / go left/right down where-ever available
  }

a:{r[x]:(i#r x),y,(i:binr[r x;y])_r x}      / append (x,y) in sorted vector
n:{$[x=last p:f[y]/[500 0];z;[a . p;z+1]]}  / function to count step

a1:n[m;m+1] over 0
-1 "Part one's answer is: ",string a1;

a2:a1+n[0;m+2] over 1
-2 "Part two's answer is: ",string a2;
exit 0
