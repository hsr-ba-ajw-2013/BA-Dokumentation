#
# Makefile for HSR-LateX-Template
#

MAIN_TEX = main.tex
BULD_CMD = ./bin/latexmk.pl -pdf $(MAIN_TEX)

# Don't ask me why.
all: build

build:
	@@$(BULD_CMD)

live:
	@@$(BULD_CMD) --pvc

clean:
	@@rm main.aux main.glo main.idx main.ist
	@@rm main.lof main.out main.pdf main.toc
	@@rm main.glg main.gls *.log main.bbl
	@@rm main.blg main.fdb_latexmk main.fls main.ilg
	@@rm main.ind
