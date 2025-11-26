# lib/empty.erl
## empty module

```erlang
% empty module for c(lib/none) test
-module(empty).
-export([none/0]).

none() ->
    ok.

% compile in erl shell:
% cd(lib).
% c(empty).
```
- [[erl/comment]]
- [[erl/module|module]]
	- Even though the module is empty, it will compile successfully as long as it has the `-module(name)` directive and follows [[Erlang]] syntax rules.
- [[erl/export|export]]
	- most modules include `-export([...])` to make functions accessible
- [[erl/hello|erl]]
- [[erl/cd]]
- [[erl/c]]
- [[erl/function]]
	- [[erl/ok|ok]]
	- `.` end dot required
