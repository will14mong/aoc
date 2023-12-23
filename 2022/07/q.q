p:("J S";" ")0:`input.txt                                         / read size & dir only, the rest are not useful
m:where differ fills p 1                                          / partition index of dir switching
d:(){x,enlist$[all c:y=`..;neg[sum c]_;{y,x}y 0]last x}/m _ p 1   / form the full path dirs for each step
s:sum each m _ p 0                                                / get sum by full path dirs
i:@[i;where count[d]=i:d?-1_'d;:;0]                               / find parent index
a1:sum x where 100000>=x:@[c#0;(i\) each til c:count d;+;s]       / sum to the root and find sum dirs at most 100K in size
-1"Part one answer is: ",string a1;

a2:x (x:asc x) binr first[x]-40000000                             / dir to delete to allow install
-1"Part two answer is: ",string a2;
exit 0
