all: install

install: pbutils.R tags.sh tags.R
	mkdir -p $(HOME)/local/bin
	install -t $(HOME)/local/bin/ $^
