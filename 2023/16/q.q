p:read0`p                                                                                 / (p)uzzle input
o:1,w,-1,neg w:count p                                                                    / (o)ffset right,bottom,left,top
M:"|-/\\"!1+til 4                                                                         / (M)irror
D:(0N,raze o*/:1+til 4)!o(),/:(0N;1 3;1;1 3;3;0;0 2;2;0 2;3;2;1;0;1;0;3;2)                / (D)irection 
V:([]n:0#0;d:0#1);                                                                        / (V)isited cache
S:(w*til w;til w;(w-1)+w*til w;(w*(w-1))+til w)                                           / (S)ides starting index
t:([]p:raze p;v:(w*w)#0b)                                                                 / (t)able for the nodes
f:{ / x:([]n;d)                                                                           / (f)unction to follow the beams and mark t visited
  `V upsert x;
  x:ungroup update nx:n+nd from update nd:d^D d*M t[`p]n from x; 
  x:delete from x where (nx<0)|(nx>-1+w*w)|((nd=-1)&(0=n mod w))|(nd=1)&((w-1)=n mod w);
  x:(distinct select n:nx,d:nd from x)except V;
  .[`t;(x`n;`v);:;1b];
  x}
s:{t[`v]:0b;t[y;`v]:1b;V::0#V;{count x} f/enlist`n`d!(y;x);exec sum v from t}             / (s)ides, function to count energized tiles for each sides
r:raze {x s/: y} .' flip (o;S)
a1:first r 
-1 "part 1 ans: ",string a1;
a2:max r
-1 "part 2 ans: ",string a2;
exit 0
