p:read0`p                                                         / (p)uzzle input
d:count@'1 first\p                                                / (d)imension row x col
c:("|7F";"-J7";"|LJ";"-LF")                                       / (c)onnecting pipes clockwise starting from north
o:(neg last d;1;last d;-1)                                        / (o)ffset clockwise starting from north
m:"|-LJ7F"!(1010b;0101b;1100b;1001b;0011b;0110b)                  / (m)oves possible for each pipe
s:first where "S"=p:raze p                                        / (s)tarting index
@[`p;s;:;m?(p s+o)in'c]                                           / update S with pipe
f:{s:last x;x,sublist[1]except[;x]s+o where m[p s]&(p s+o)in'c}   / (f)unction to find next connecting pipe
a1:floor .5*1+count l:f over s                                    / part 1: find one big loop
-1"part 1 ans: ",string a1;
