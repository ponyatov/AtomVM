APP     = $(notdir $(CURDIR))
APP     = atom
REL     = $(shell git rev-parse --short=4    HEAD)
BRANCH  = $(shell git rev-parse --abbrev-ref HEAD)
NOW     = $(shell date +%y%m%d)
PEPS    = E26,E302,E305,E401,E402,E701,E702
HW      = pc
BINFILE = $(APP)_$(HW)_$(BRANCH)_$(NOW)

CWD = $(CURDIR)
BIN = $(CWD)/bin
DOC = $(CWD)/doc
LIB = $(CWD)/lib
INC = $(CWD)/inc
SRC = $(CWD)/src
TMP = $(CWD)/tmp
REF = $(CWD)/ref

H = $(wildcard inc/*.h*)
C = $(wildcard src/*.c*)
HP = tmp/linux/$(APP).yacc.hpp
CP = tmp/linux/$(APP).yacc.cpp tmp/linux/$(APP).lex.cpp
E = $(wildcard lib/*.erl)
S = $(subst .erl,.S,$(E))

CFLAGS += -std=c++23 -Iinc -Itmp/linux

.PHONY: all run
all: bin/$(BINFILE) $(S)
run: bin/$(BINFILE) $(S)
	$^

bin/$(BINFILE): $(C) $(H) $(CP) $(HP)
	$(CXX) $(CFLAGS) -o $@ $(C) $(CP) $(L)
tmp/linux/%.lex.cpp: src/%.lex
	flex -o $@ $<
tmp/linux/%.yacc.cpp: src/%.yacc
	bison -o $@ $<

lib/%.S: lib/%.erl
	erlc -o lib -S $<

.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/

.PHONY: doxy
doxy: .doxygen doc/DoxygenLayout.xml doc/erlang.png
	rm -rf doc/html ; doxygen $< 1>/dev/null
	cargo doc && cp -r target/$(RTARGET)/doc/$(APP) doc/html/

.PHONY: sync
sync: doc

.PHONY: install update
install:
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.Debian`
