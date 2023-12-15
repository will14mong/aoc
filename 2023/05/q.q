p:flip@'get@''2_'(where""~/:P)_P:read0`p                  / (p)uzzle input
s:get 7_first P                                           / (s)eed
m:{ r:flip 0 -1+sums 1_x;                                 / (m)ap the puzzle as sorted dict
    d:((0,1+r[;1])!(1+(#:)r)#0),r[;0]!(-/) -1_x;
    `s#(asc key d)#d}
r:{ r:distinct m(m?y 0)_til 1+(m:asc key[x],y)?y 1;       / (r)ange after applying map x to range y
    r:{@[x;-1+(#:)x;1+]}r;
    k+x k:(-1_r),'-1+1_r}
l:m each p                                                / (l)ist of dict map
a1:min s {x+y x}/l                                        / part 1: apply seed over list of map and find the min
-1 "part 1 ans: ",string a1;
a2:(min/){raze r[y]@'x}/[flip 0 -1+(+\)flip 0N 2#s;l]     / part 2: apply range over list of map and find the min
-1 "part 2 ans: ",string a2;
exit 0
