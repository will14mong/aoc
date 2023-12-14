p:1_'(where ""~/:p)_ p:enlist[""],read0`p
c:{(~).(::;reverse)@'(-1 1*min count each m)#'m:(0,y)_x}
f:{$[any b:1_c[x] each til count x;1+b?1b;0]}
a1:sum 100 1*sum@'f@'/:(p;flip each p)
