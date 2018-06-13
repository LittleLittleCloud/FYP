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

fyp: clean _fyp

_fyp: fyp.tex translate-0.pdf preface-0.pdf xuanti-0.pdf working_schedule-0.pdf midcheck-0.pdf review-0.pdf
	-xelatex fyp.tex 
	-bibtex fyp.aux 
	-xelatex fyp.tex 
	-xelatex fyp.tex 
	evince fyp.pdf &

%-0.pdf:%.pdf 
	pdftops $<
	epstopdf $*.ps --outfile=$*-0.pdf
# translate-0.pdf:translate.pdf
# 	pdftops  translate.pdf 
# 	epstopdf translate.ps --outfile=translate-0.pdf

# preface-0.pdf:preface.pdf 	
# 	pdftops  preface.pdf 
# 	epstopdf preface.ps --outfile=preface-0.pdf

translation: translation.tex translate.pdf
	pdftops  translate.pdf 
	epstopdf translate.ps
	pdftops  translate_en.pdf 
	epstopdf translate_en.ps
	xelatex translation.tex 
	evince translation.pdf &
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
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind
