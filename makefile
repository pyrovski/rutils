all: install

install: pbutils.R
	mkdir -p $(HOME)/local/bin
	install -t $(HOME)/local/bin/ $^
