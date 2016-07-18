
-type command_action() :: [create|read|update|delete]. %% just basic CRUD; sending a mesage is 'create'

-type typedef() :: integer|binary|float. %% most basic primitives, string is a binary

-type argspec() :: typedef()
                  |{atom(), typedef()} %% a named argument
                  |{argspec()} % a tuple of a few args (can be of any size)
                  |[typedef()]. % a list, but one element

-type security() :: [admin|user]. %% later acl option will be added

-type errortype() :: denied|not_implemented|type_error|internal. %% we should agree on a set of atoms so that the
                                                                 %% frontend can map it to http codes

-type failure() :: {error, errortype(), binary()}.

-record(mongoose_command, {
    name :: atom(),                             %% name of the command by which we refer to it
    category :: atom(),                         %% very important
    desc :: string(),                           %% long description
    module :: module(),                         %% module to call
    function :: atom(),                         %% function to call
    action :: command_action(),                 %% so that the HTTP side can decide which verb to require
    args = [] :: [argspec()],                   %% this is both for introspection and type check on call
    identifiers = [] :: [atom()],               %% if action is 'update' then it must be a subset of args
    security_policy = [admin] :: security(),    %% permissions required to run this command
    result :: argspec()|ok                      %% what the called func should return; if ok then return of called
                                                %% function is ignored
}).

