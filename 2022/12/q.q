v:raze p:read0`input.txt                                              / flatten puzzle
o:(("SE",.Q.a)!(0 26,1+til count .Q.a))v                              / ordering of alphabet from S->E
t:2!flip`r`c`v`o!(((count;count first@)@\:p)vs til count v),(v;o)     / row,col,value,order
m:flip `r`c!(0 0 1 -1;1 -1 0 0)                                       / movement
update w:?[o=0;0;0W] from `t; 

/ traverse node bfs and update w (distance) 
f:{                                                                         / x:starting node(s)
  p:(ungroup(`r`c!/:flip x[`r`c]+\:'m`r`c),'`o_`w_ xcol `o`w#x:0!x) lj t;   / get all possible movements
  n:select w:min[w]&0Wj^1+min[w_] by r,c from p where not null w,1>=o-o_;   / get min distance (w)
  `t upsert n;                                                              / update distance on original table
  key[n]#t}                                                                 / return next nodes to travel from

E:first select r,c from t where v="E"
{0W=t[E]`w} f/ select from t where w=0;
-1 "Part one's answer is: ",string t[E]`w;

update w:?[o in 0 1;0;0W] from `t; 
{0W=t[E]`w} f/ select from t where w=0;
-1 "Part two's answer is: ",string t[E]`w;
exit 0


