OUT = out
FILENAME = report
OUTPUT_NAME = Rate_Reduction_Report.pdf

all:
	mkdir -p $(OUT)
	pdflatex -output-directory $(OUT) $(FILENAME).tex
	bibtex $(OUT)/$(FILENAME).aux
	pdflatex -output-directory $(OUT) $(FILENAME).tex
	pdflatex -output-directory $(OUT) $(FILENAME).tex
	mv $(OUT)/$(FILENAME).pdf ./$(OUTPUT_NAME)

spellcheck:
	aspell --personal=./.aspell.en.pws --lang=en_GB --mode=tex check $(FILENAME).tex
