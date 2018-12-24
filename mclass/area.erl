-module(area).
-export([area/0]).

area() ->
	receive
		{From, {square, X}} ->
			From | X*X;
		{From, {rectangle, X, Y}} ->
			From | X*Y
	end,
	area().


