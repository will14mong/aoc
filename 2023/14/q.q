p:read0`p;                                                          / (p)uzzle
t:("#"sv desc each "#"vs)@'                                         / (t)ilt and move circle rock
s:{sum(raze/)count[first x]-where each"O"=x}                        / (s)um of load
a1:s t flip p                                                       / part 1:sum tilt puzzle
-1 "part 1 ans: ",string a1;
c:(reverse flip t@)/[4;]                                            / (c)ycle
tc:{                                                                / (t)ermination (c)ondition, detect pattern of at least 2 apart
  c:any 0>(k:1+w-d:abs(-/)w:-2#w:where x=last x);
  $[c|d<2;0b;(~). k _x]}
l:first {not tc x 0}{(x[0],s r;r:c x 1)}/(1#0;flip p)               / (l)ist of sum of load for each cycle
a2:(neg[d]#l)(1000000000-count l) mod d:abs(-).-2#where l=last l    / part 2:find out from the list for 1000000000 cycles 
-1 "part 2 ans: ",string a2;
exit 0
