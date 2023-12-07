p:("*J";" ")0:`p                                                      / (p)uzzle
t:(5#1;2 1 1 1;2 2 1;3 1 1;3 2;4 1;5)                                 / (t)ype of hands order by least to strongest
s:{sum each x*x}                                                      / (s)um of prds
c:(count each group@)'                                                / (c)ount each cards
f:{sum x[1]*1+(a iasc s[t]?s z c a:asc k)?k:y x 0}                    / (f)unction to count total winnings (x:puzzle, y:map, z:update card count func)
m:("AKQJT98765432";"AKQT98765432J")!\:14-til 13                       / (m)ap from cards to numbers (larger number being stronger)
-1"part 1 ans: ",string f[p;m 0;::];                                  / part 1 ans
u:{@'[d;x^{(first where@)@'x=max@'x}d:enlist[x]_/:y;+;0^y@'x]}m[1]"J" / (u)pdate card number by reallocating "J" to next max count card
-1"part 2 ans: ",string f[p;m 1;u];                                   / part 2 ans
exit 0
