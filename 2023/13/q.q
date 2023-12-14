p:1_'(where ""~/:p)_ p:enlist[""],read0`p                                   / (p)uzzle
c:{x(::;reverse)@'(-1 1*min count each m)#'m:(0,z)_y}                       / (c)heck match, (x:chk func, y:puzzle, z:index to cut)
f:{$[any b:1_x[(~).;y] each til count y;1+b?1b;0]}                          / (f)unction to return reflection line no
a1:(sum/)100 1*f[c]@'/:P:(p;flip each p)                                    / part 1 
-1 "part 1 ans: ",string a1;
s:{sum r*not (count y)=r:{1+(x[(sum/)not(=).;y]each 1_til count y)?1}[x]y}  / (s)mudge find exactly 1 spot to fix to get perfect reflection's line no
a2:(sum/)100 1*s[c]@'/:P                                                    / part 2
-1 "part 2 ans: ",string a2;
exit 0
