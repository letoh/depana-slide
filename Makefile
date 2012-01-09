#TEX		= /usr/bin/latex
#TEX			= /usr/bin/bg5latex
TEX			= /usr/bin/pdflatex

#DVIPDFM		= /usr/bin/dvipdfm
DVIPDFM		= /usr/bin/dvipdfmx
DVIPS		= /usr/bin/dvips


.SUFFIXES:

.SUFFIXES: .tex .dvi .ps

.tex:
	$(TEX) $<
	$(DVIPDFM) $*.dvi

all:
	@echo "make all"
#	$(MAKE) clean
	$(TEX) slide.tex
#	$(TEX) slide.tex
#	$(DVIPDFM) ips
#	$(MAKE) clean


clean:
	rm -rf *.dvi *.aux *.log *.cjk *.toc *.nav *.out *.snm

distclean: clean
	rm -rf *.pdf

