p:("**";":")0:`p                                      / read puzzle
i:first (" I";" ")0:first p                           / id of the games
c:((!). reverse(" IS";" ")0:)''[","vs''";"vs'last p]  / dict of cubes count for each games/set
x:`red`green`blue!12 13 14i                           / given cube per color
a1:sum i where all flip (&/')c<=\:\:x                 / part 1: compare with each sets and if all set's cubes <= given cube, it means it can be played and sum those game's id
-1 "part 1 ans: ",string a1;
a2:sum prd each (|/')c                                / part 2: get max of cubes for each sets, multiply them and sum across games
-2 "part 2 ans: ",string a2;
exit 0
