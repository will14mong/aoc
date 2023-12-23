p:read0 `:input.txt                           / read the puzzle input
s:trim each flip[8#p]1+4*til 9                / read in the stacks
i:(" I I I";" ")0:10 _p                       / read instruction as 3 list vectors
i:@[i;1 2;-1i+]                               / convert to index 0

/ (l)ambda, (s)tacks, (n)umber, a, b
f:{[l;s;n;a;b]@[;;]/[s;b,a;(l[n#s a],;n _)]}  / common function

/ Crater Mover 9000 
s1:f[reverse]/[s] . i
a1:raze string first each s1
-1"Part one answer is: ",a1;

/ Crater Mover 9001
s2:f[::]/[s] . i
a2:raze string first each s2
-1"Part two answer is: ",a2;
exit 0
