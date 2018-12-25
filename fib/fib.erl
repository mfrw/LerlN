-module(fib).
-export([fib/1]).

fib(N) when is_number(N), N < 2 ->
	N;
fib(N) when is_number(N), N =:= 2 ->
	2;
fib(N) when is_number(N), N =:= 3 ->
	3;
fib(N) when is_number(N), N =:= 4 ->
	5;
fib(N) when is_number(N), N =:= 5 ->
	8;
fib(N) when is_number(N), N =:= 6 ->
	13;
fib(N) when is_number(N), N =:= 7 ->
	21;
fib(N) when is_number(N) ->
	fib(N-1) + fib(N-2).
