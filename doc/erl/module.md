# module

- Even though the module is empty, it will compile successfully as long as
	- it has the `-module(name)` directive
	- and follows [[Erlang]] syntax rules.

![[erl/empty|empty]]

https://www.erlang.org/doc/system/modules.html

Erlang code is divided into _modules_. A module consists of a sequence of attributes and function declarations, each terminated by a period (`.`).

## attribute

A _module attribute_ defines a certain property of a module.

consists of a tag and a value:
```erlang
-Tag(Value).
```

- Tag must be [[erl/atom|atom]]
- Value must be literal term
	- `Name/Arity` (atom/integer) translates into `{Name,Arity}`

```erlang
-entry(none/0).
```
compiles into:
```erlang
{attributes, [{entry,[{none,0}]}]}.
```

