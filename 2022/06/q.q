p:first read0 `:input.txt

f:{x+(-/)(count')(y;{$[x~count distinct x#y;y;1_y]}[x]/[y])}
a1:f .(4;p)
-1 "Part one answer is: ",string a1;
a2:f .(14;p)
-1 "Part two answer is: ",string a2;
exit 0
