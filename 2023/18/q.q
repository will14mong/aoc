p:flip`d`n`c!("CJ*";" ")0:`p                                      / (p)uzzle input
x:"LRUD"!-1 1 0 0                                                 / x direction
y:"LRUD"!0 0 1 -1                                                 / y direction
f:{exec 1+abs[sum sums[n*x d]*n*y d]+div[sum n;2] from z}[x;y]    / count = 1+area+perimeter/2
a1:f p                                                            / part 1
-1"part 1 ans: ",string a1;
p:update d:"RDLU""0123"?c[;7],
         n:(16 sv "0123456789abcdef"?5#2_)each c from p           / convert hex to dec and rearrange direction
a2:f p
-1"part 2 ans: ",string a2;
exit 0
