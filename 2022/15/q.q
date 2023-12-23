p:(last(" I";"=")0:)@/:raze(-1_'';::)@'0 3_("  **    **";" ")0:`input.txt
d:(+/)abs(-/)2 0N#p                                               / distance that each sensor can reach

x1:{[x;y;d;r](x i)+/:(neg\)k i:where 0<=k:d+(y-r)*-1+2*r>y}       / find ranges cover by each sensor
x2:{$[y[0]within x+0 1;(min;max)@'flip(x;y);x]}                   / collapses overlapped ranges

/ part 1
a1:1+abs(-/)r:(x2/)asc flip reverse x1[p 0;p 1;d;2000000]
a1-:sum(distinct p[2] where 2000000=p 3)within r
-1"Part one's answer is ",string a1;

/ part 2
r:{(x2/)asc flip reverse x1[p 0;p 1;d;x]}each til 4000000 
y:first where any b:0 4000000<>r:(0|;4000000&)@'flip r
x:first ((-1 1*b)+r@\:y)where b:b@\:y
a2:y+x*4000000
-1"Part two's answer is ",string a2;

exit 0
