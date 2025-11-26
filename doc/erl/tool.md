```Makefile
# version
REBAR_VER = 3.20.0
```
```Makefile
# tool
REBAR  = $(shell which rebar3)
REBAR ?= $(HOME)/bin/rebar3
```
```Makefile
# install
install: $(OS)_install doc gz $(REBAR)
updev:   update $(OS)_updev
		 $(REBAR) local   upgrade
		 $(REBAR) plugins upgrade --all

$(REBAR):
	$(CURL) $@ https://github.com/erlang/rebar3/releases/download/$(REBAR_VER)/rebar3
	chmod +x $@ ; $@ local install
```
