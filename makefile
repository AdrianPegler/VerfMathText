SHELL=/bin/bash

BASEFILE="template"

doitall:
	pdflatex $(BASEFILE)
	bibtex $(BASEFILE)
	pdflatex $(BASEFILE)
	pdflatex $(BASEFILE)

clean:
	for f in aux bbl blg glo idx log toc; do \
	if [ -z "$$(ls *.$$f)" ]; then true; else rm *.$$f; fi \
	done
