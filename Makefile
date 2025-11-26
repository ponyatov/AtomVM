APP = atom
# $(notdir $(CURDIR))

CWD = $(CURDIR)
BIN = $(CWD)/bin
DOC = $(CWD)/doc
LIB = $(CWD)/lib
INC = $(CWD)/inc
SRC = $(CWD)/src
TMP = $(CWD)/tmp
REF = $(CWD)/ref

BINFILE = $(BIN)/$(APP)

H = $(wildcard inc/*.h*)
C = $(wildcard src/*.c*)
E = $(wildcard lib/*.erl)
S = $(subst .erl,.S,$(E))

CFLAGS += -std=c++23 -Iinc -Itmp

.PHONY: all run
all: $(BINFILE) $(S)
run: $(BINFILE) $(S)
	$^

$(BINFILE): $(C) $(H) $(CP) $(HP)
	$(CXX) $(CFLAGS) -o $@ $(C) $(CP) $(L)

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
