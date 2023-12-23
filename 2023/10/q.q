p:read0`p                                                         / (p)uzzle input
d:count@'1 first\p                                                / (d)imension row x col
c:("|7F";"-J7";"|LJ";"-LF")                                       / (c)onnecting pipes clockwise starting from north
o:(neg last d;1;last d;-1)                                        / (o)ffset clockwise starting from north
m:"|-LJ7F"!(0 2;1 3;0 1;0 3;2 3;1 2)                              / (m)oves possible for each pipe (0:north,1:east,2:south,3:west)
s:first where "S"=p:raze p                                        / (s)tarting index
@[`p;s;:;m?where(p s+o)in'c];                                     / update S with pipe
f:{x,sublist[1]except[;x]s+o i where(p s+o i)in'c i:m p s:last x} / (f)unction to find next connecting pipe
a1:floor .5*1+count l:f over s                                    / part 1: find one big loop
-1"part 1 ans: ",string a1;
k:1_deltas(1+count l)#(l mod d 1),'l div d 1                      / deltas point shift
a:abs[sum(sums k[;0])*k[;1]]+(div[count l;2])+1                   / (a)rea including lines
a2:a-count l                                                      / (a)rea excluding lines
-1"part 2 ans: ",string a2;
exit 0
