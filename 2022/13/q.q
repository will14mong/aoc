p:`long$.j.k@''"\n" vs'"\n\n" vs -1_"c"$read1`input.txt
/ not really a vector solution, but easier to understand
f:{r:0;                               / compare function
  while[not[r]&any count each x;
    a:x 0;b:x 1;t:type@'x;            / first, second item and type each
    r:$[0=count a;1;                  / left side no more, in order
        0=count b;-1;                 / right side no more, not in order
        all t<0;b-a;                  / if atom compare item
        all 0<=abs t;.z.s first@'x];  / if both list, test the first item
    x:1_'(),/:(a;b)];                 / test the rest of the items
  :r}

a1:sum 1+where 0<f each p;
-1 "Part's one answer is: ",string a1;

d:(2 enlist/2;2 enlist/6);            / divider package
a2:prd 1+where max 0 1=\: iasc sum 0<r {f(x;y)}/:\:r:d,raze p;
-1 "Part's two answer is: ",string a2;
exit 0
