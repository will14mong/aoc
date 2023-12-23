p:-65 -88+7h$("cc";" ")0:`:input.txt  / read input & convert to 0,1,2
s:3*mod[1-(-/)p;3]                    / find distance, 0(draw) 1(win) 2(lose), shift, mod, times 3
a1:sum s+1+p 1                        / calc total score for part 1

/ X means you need to lose, 
/ Y means you need to end the round in a draw, and 
/ Z means you need to win
h:1+mod[2+(+/)p;3]                    / find the hand that we need to play (score)
a2:sum h+3*p 1                        / calc total score for part 2

-1 "Part one answer is ",string a1;
-1 "Part two answer is ",string a2;
exit 0
