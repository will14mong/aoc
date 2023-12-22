p:1_'(where ""~/:p) _ p:(enlist""),read0`p                                      / (p)uzzle input
m:(`$i#'p 0)!-1_'(1+i:p[0]?'"{") _'p 0                                          / (m)ap of function to definition
l:raze`$"xmas",/:\:("mn";"mx")                                                  / (l)abel min/max for each xmas var
t:enlist `n`p`l!(`in;0;1b)                                                      / (t)ree root (n:node, p:parent index, l: true or false)
n:{ n:`$raze":"vs'","vs m x;                                                    / (n)ode creation function
    p:y,count[t]+2*where(c:count[n] div 2)#2;
    flip(n;p;1b,(c*2)#10b)}
{c:count t;
 (`t upsert n .)@'flip exec(n;I)from x where n in key m;
 select n,I:i from t where n in key m,i>c-1} over enlist`n`I!(`in;0);           / add all nodes into the 't'ree table
t:update num:"J"$2_'string n from ![t;();0b;l!8#1 4000]                         / update t with min/max for each var and num from compare definition
u:{ n:string[x`n];                                                              / (u)pdate min/max variable 
    v:n 0;s:n 1;
    c1:(s="<")&x`l;
    c2:(s=">")&x`l;
    c3:(s="<")&not x`l;
    c4:(s=">")&not x`l;
    k:`$v,$[c1|c4;"mx";"mn"];
    @[x;k;$[c1|c4;&;|];$[c1;-1;c2;1;0]+x`num]}
f:{select from (update prev l from t t[`p]scan x)where not n in (`A`R,key m)}   / (f)unction to get path to root
r:((8#(max;min))@'value flip l#u each f@)each where `A=t`n                      / (r)esults of xmas min/max for each Accepted path
i:"J"$(("S=," 0:except[;"{}"]@)each p 1)[;1]                                    / (i)nput for qns 1
a1:(+//)i where {any all x within' 2 cut flip r}each i                          
-1 "part 1 ans: ",string a1;
a2:sum prd flip 1+(deltas each r)[;1 3 5 7]
-1 "part 2 ans: ",string a2;
exit 0
