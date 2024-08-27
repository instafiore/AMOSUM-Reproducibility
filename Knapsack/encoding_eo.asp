value_max(20).

{in_knapsack(X, V): V=0..MAX, value_max(MAX)} = 1 :- object(X,WEIGHT,VALUE).
:- in_knapsack(X, V), V >= 1, in_knapsack(X, V-1).

% aggregates
:- #sum{WEIGHT,X,V: in_knapsack(X,V), object(X,WEIGHT,_)} >= MAX_WEIGHT, lb(MAX_WEIGHT,0).

:- #sum{VALUE,X,V: in_knapsack(X,V), object(X,_,VALUE)} < MIN_VALUE, lb(MIN_VALUE,1).
