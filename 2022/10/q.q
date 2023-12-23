p:("SJ";" ")0:`input.txt
i:1+sums raze p[1]*(1#0;til 2)`noop`addx?p 0  / register X after each cycle, apply register chg to the last cycle for addx
a1:sum x*i -2+x:20 60 100 140 180 220         / calc signal strength
-1 "Part one answer is: ",string a1;

a2:".#"2>abs til[40]-/:6 40#1,i               / compare position to the index and if they are less than 2 it should be lit
-1 "Part two answer is: ";
-1 "\n" sv a2;
exit 0
