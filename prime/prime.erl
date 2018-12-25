-module(prime).
-export([prime_numbers/1]).


prime_numbers(N) when is_number(N) ->
	prime_numbers(N, generate(N)).

prime_numbers(Max, [H|T]) when H * H =< Max ->
	[H | prime_numbers(Max, [R || R <- T, (R rem H) > 0])];
prime_numbers(_, T) ->
	T.

generate(N) ->
	generate(N, 2).
generate(Max, Max) ->
	[Max];
generate(Max, X) ->
	[X | generate(Max, X+1)].
