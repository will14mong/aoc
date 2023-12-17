p:"," vs first read0`p                      / (p)uzzle
h:{mod[17*x+`int$y;256]}                    / (h)ash function
a1:sum 0 h/'p                               / part 1: sum of each hash
-1 "part 1 ans: ",string a1;
r:{$["="in x;"SJ"$"=" vs x;"S"$-1_x]}       / (r)ead label and parse into (label;focal length) for = or label for -
d:{ n:h/[0;string first l:r y];             / (d)ictionary of boxes and their label/focal length
    $[0h=type l;x[n],:(!). 1#'l;x[n]_:l];
    x}/[(til 256)!256#enlist()!();p]
K:1+where not 0=C:count each d              / (K)ey label+1
a2:(sum/)K*(1+til each C K-1)*d K-1         / part 2: do the math as per qn
-1 "part 2 ans: ",string a2;
exit 0
