{col(X,C) : colour(C)} <= 1 :- node(X).
:- col(X1,C), col(X2,C), link(X1,X2).

group(col(X,C), W, X,0) :- col(X,C), colour_weight(C,W).