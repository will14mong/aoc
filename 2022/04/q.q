/ 
------- COMMENTS -------
part one logic (contained)
a|---------|b
   c|---|d
(a-c) = -ve or 0
(b-d) = +ve or 0

   a|---|b
c|---------|d
(a-c) = +ve or 0
(b-d) = -ve or 0

generalization, if the multiplication of both distance is <=0 then it is contained within
(a-c)*(b-d) <= 0

/ part two logic (overlapped)
a|--------|b
    c|--------|d
(a-d) = -ve or 0
(b-c) = +ve or 0

    a|--------|b
c|--------|d
(a-d) = -ve or 0
(b-c) = +ve or 0

generalization, if the multiplication of both distance is <=0 then it is overlapped 
(a-d)*(b-c) <= 0

--- END OF COMMENTS ---
\

p:("JJ";"-")0:/:("**";",")0:`:input.txt   / read input into 2x2xN matrix
f:sum 0>=(*/)(-/)@
a1:f p                                    / part one logic
a2:f @[p;1;|:]                            / part two logic, reverse the second element

-1 "Part one answer is: ",string a1;
-1 "Part two answer is: ",string a2;
exit 0
