-module(kata).
-export([mxdiflg/2]).

-spec mxdiflg([string()], [string()]) -> integer().

mxdiflg(A1, A2) ->
    case {A1, A2} of
        {[], _} -> -1;   % A1 is empty
        {_, []} -> -1;   % A2 is empty
        {_, _} ->
            MaxLengthA1 = lists:max(lists:map(fun(S) -> length(S) end, A1)),
            MinLengthA1 = lists:min(lists:map(fun(S) -> length(S) end, A1)),
            MaxLengthA2 = lists:max(lists:map(fun(S) -> length(S) end, A2)),
            MinLengthA2 = lists:min(lists:map(fun(S) -> length(S) end, A2)),
            
            Max = max(abs(MaxLengthA1 - MinLengthA2), abs(MaxLengthA2 - MinLengthA1)),
            Max
    end.
