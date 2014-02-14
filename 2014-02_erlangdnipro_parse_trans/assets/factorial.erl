-module (factorial).
-export ([fact/1]).

fact(N) when N < 0 -> error;
fact(0)            -> 1;
fact(N)            -> N * fact(N - 1).
