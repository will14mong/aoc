i:{n:6h$count[first x]%3;(n#"I";n#3)0:x}                        / parse (i)nteger
p:flip(flip i@)each(rtrim;::)@'("**";"|")0:last("**";":")0:`p   / parse (p)uzzle into list of 2 integer sets
a1:sum floor .5*2 xexp count each(inter).'p                     / part 1: count each intersection and sum them
-1 "part 1 ans: ",string a1;

f:{@[x;y+til count n;+;n:1,(1+x y)*(count(inter). p y)#1]}      / (f)unction to count scratch cards after each game (x:list of card counts, y:nth game)
a2:sum(c#0) f/til c:count p                                     / part 2: count cards over each game and sum them in the final step
-1 "part 2 ans: ",string a2;
exit 0
