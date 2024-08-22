value_max(20).

{in_knapsack(X, V): V=1..MAX, value_max(MAX)} <= 1 :- object(X,WEIGHT,VALUE).

:- #sum{V*WEIGHT,X: in_knapsack(X,V), object(X,WEIGHT,_)} > MAX_WEIGHT, lb(MAX_WEIGHT,0).
% group(in_knapsack(X,V), -V*WEIGHT, X,0) :- in_knapsack(X,V), object(X,WEIGHT,_).

% :- #sum{V*VALUE,X: in_knapsack(X,V), object(X,_,VALUE)} < MIN_VALUE, lb(MIN_VALUE,1).
group(in_knapsack(X,V), V*VALUE, X,1) :- in_knapsack(X,V), object(X,_,VALUE).