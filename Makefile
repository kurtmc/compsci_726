OUT = out
FILENAME = report
OUTPUT_NAME = Rate_Reduction_Report.pdf

all:
	${MAKE} pdflatex
	${MAKE} bibtex
	${MAKE} pdflatex
	mv $(OUT)/$(FILENAME).pdf ./$(OUTPUT_NAME)

pdflatex:
	mkdir -p $(OUT)
	pdflatex -output-directory $(OUT) $(FILENAME).tex

bibtex:
	bibtex $(OUT)/$(FILENAME).aux

spellcheck:
	aspell --personal=./.aspell.en.pws --lang=en_GB --mode=tex check $(FILENAME).tex

clean:
	rm -rf $(OUT)
	rm -f $(OUTPUT_NAME)
