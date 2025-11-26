```sh
sudo apt install -uy erlang rebar3
```
- [[Erlang]]
- [[rebar3]]

## check

```
$ erl
Erlang/OTP 25 [erts-13.1.5] [source] [64-bit] [smp:8:4] [ds:8:4:10] [async-threads:1] [jit:ns]

Eshell V13.1.5  (abort with ^G)

1> Ctrl+C Ctrl+D

BREAK: (a)bort (A)bort with dump (c)ontinue (p)roc info (i)nfo (l)oaded (v)ersion (k)ill (D)b-tables (d)istribution
```

## obsoleted
```shell
$ curl --output-dir /tmp/ -O https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
$ sudo dpkg -i /tmp/erlang-solutions_2.0_all.deb
$ sudo apt purge elixir* erlang*
$ sudo apt update
```
```shell
$ sudo apt install esl-erlang
```
