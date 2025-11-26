# дополнения в [[Makefile]] для [[Elixir]]

```Makefile
# tool
IEX    = iex
MIX    = mix
```
```Makefile
# src
X += mix.exs
X += $(shell find lib    -type f -regex .+.exs?$$)
X += $(shell find test   -type f -regex .+.exs?$$)
X += $(shell find config -type f -regex .+.exs?$$)
S += $(X) $(E)
```

Компиляция для проверки кода, и его автоформатирование вынесено в отдельный target

```Makefile
.PHONY: elixir
elixir:
	$(MIX) compile
	$(MAKE) format
```
```Makefile
.PHONY: watch
watch:
	$(MAKE) elixir
	$(IEX) -S $(MIX)
	$(MAKE) $@
```
