all: install

install: pbutils.R tags.sh rtags.R
	mkdir -p $(HOME)/local/bin
	install -t $(HOME)/local/bin/ $^
