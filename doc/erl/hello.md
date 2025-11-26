# Hello [[Erlang]]

[[erl/install|install]]

- Run [[lang/REPL|REPL]] session in [[vscode/VSCode|VSCode]] internal terminal:
```sh
$ erl
```
```
Erlang/OTP 26 [erts-14.2.2] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit]

Eshell V14.2.2 (press Ctrl+G to abort, type help(). for help)
```

- execute commands (with Shift-Enter):
```
1> io:format("Hello from Erlang REPL!~n").
Hello from Erlang REPL!
ok
2> c(hello).
{ok,hello}
3> hello:say_hello().
Hello from Erlang!
ok
4> hello:say_hello("Developer").
Hello from Developer!
ok
5> q().
ok
```

![[erl/empty]]
![[3ebar3]]