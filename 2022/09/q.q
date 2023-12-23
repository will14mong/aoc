/ 
distance h-t
(-2, 0) -> tail move (-1, 0)
( 2, 0) -> tail move ( 1, 0)
( 0, 2) -> tail move ( 0, 1)
( 0,-2) -> tail move ( 0,-1)
( 1, 2) -> tail move ( 1, 1)
( 2, 1) -> tail move ( 1, 1)
(-1, 2) -> tail move (-1, 1)
(-2, 1) -> tail move (-1, 1)
( 1,-2) -> tail move ( 1,-1)
( 2,-1) -> tail move ( 1,-1)
(-1,-2) -> tail move (-1,-1)
(-2,-1) -> tail move (-1,-1)
\
s:0 0                                                   / start point
r:"RULD"!(1 0;0 1;-1 0;0 -1)                            / RULD (x,y) point move
m:{(2 in abs d)*abs[v]*v:signum d:x-y}                  / map distance to movement of tail
p:where(!/)("cj";" ") 0:`input.txt                      / read input, convert to series of RULD
h:sums r p                                              / heads coordinates
f:{x{x+m[y;x]}\y}                                       / func to return tail coordinates given starting point and head coordinates move list
a1:count distinct f[s;h]                                / count distinct coordinates
-1 "Part one answer is: ",string a1;
a2:count distinct 9 f[s]/h                              / do it 9 times 
-1 "Part two answer is: ",string a2;
exit 0
