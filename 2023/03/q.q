p:read0`p                                       / read (p)uzzle
u:((|/)((|':);(|:)(|':)(|:)@)@\:)               / marked above & below with 1b
a:(flip u flip u@)                              / marked (a)round special char with 1b
c:(distinct raze p) except ".",.Q.n             / special (c)haracters except num & .
n:p in\:.Q.n                                    / (n)umbers boolean matrix
s:p in\:c                                       / (s)ymbols boolean matrix
d:(where differ@)'                              / (d)iffer to get array to separate numbers 
v:distinct each d[n] bin'where each n&a s       / (v)alid index of numbers around symbols
i:"I"$d[n]_'p                                   / list of (i)nt numbers from matrix p
a1:sum raze i@'v                                / sum all the numbers around the symbols
-1"part 1 ans: ",string a1;

g:p="*"                                         / (g)ears boolean matrix 
f:{ if[not any g[;y];:x];                       / if no * on that column, return prev sum 
    c:-1 0 1+/:where g[;y];                     / list of columns adjacent to *
    p:distinct each d[n]bin\:-1 0 1+y;          / list of number's index for each row 
    m:raze each (i@'p)@/:c;                     / list of numbers that's adjacent to *
    :x+sum prd'[m]*-1+sum each not null m}      / return prd + prev sums 
a2:0 f/til count first p
-1"part 2 ans: ",string a2;
exit 0
