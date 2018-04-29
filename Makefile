SRC = $(wildcard *.tex)

PDFS = $(SRC:.tex=.pdf)

BIBS= $(SRC:.tex=.bib)
all:	clean pdf

en:	clean xelatex resume.tex

zh_CN:	clean xelatex resume-zh_CN.tex

pdf:	clean $(PDFS)

src: 
		@echo $(BIBS)

bib: clean $(BIBS)

%.bib: %.tex
	xelatex $(basename $<).tex
	bibtex $(basename $<).aux
	xelatex $(basename $<).tex
	xelatex $(basename $<).tex
	evince $(basename $<).pdf &

# %.pdf:  %.tex
# 	xelatex $<

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif


clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf
