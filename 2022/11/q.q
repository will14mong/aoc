p:7 cut read0 `input.txt
i:(),/:get@'18_'p[;1]               / read the items
o:get@'"{[old]",/:19_'p[;2],\:"}"   / operation on worry level
t:get@'21_'p[;3]                    / divisible test
m:"I"$30 29_'/:p[;5 4]              / which monkeys to throw to
c:count m                           / how many monkeys

/ (l)ambda of worry level after inspection
/ (s)tate
/ (n)th monkey
/ (o)peration on worry level
/ (t)est
/ (m)onkey to throw to on false/true test
f:{[l;s;n;o;t;m]                    / common function 
  w:(l o i:s[0] n;0#0j);            / new worry level & cleanup
  p:(m 0=mod[w 0;t];n);             / index to update the state to
  r:@[;;;]/[s 0;p;(,;:);w];         / update the state
  c:@[s 1;n;+;count i];             / count of inspected items
  (r;c)}

g:f[div[;3]]/[;til c;o;t;m]
h:f[mod[;prd t]]/[;til c;o;t;m]

a1:(*/)2#desc 2 last/20 g\(i;c#0)
-1"Part one's answer is: ",string a1;

a2:(*/)2#desc 2 last/10000 h\(i;c#0)
-1"Part two's answer is: ",string a2;
exit 0
