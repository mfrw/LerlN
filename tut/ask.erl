-module(ask).
-export([term/0]).

term() ->
	Input = io:read("What {planemo, distance} ? >>"),
	process_term(Input).

process_term({ok, Term}) when is_tuple(Term) ->
	Velocity = drop:fall_velocity(Term),
	io:format("Yeilds ~w. ~n", [Velocity]),
	term();

process_term({ok, quit}) ->
	io:format("Goodbye.~n");

process_term({ok, _}) ->
	io:format("You must enter a tuple.~n"),
	term();

process_term({error, _}) ->
	io:format("You must enter a tuple with correct syntax.~n"),
	term().
