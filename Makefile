OUT = out
FILENAME = report
OUTPUT_NAME = Tor_Plugin_Report.pdf

all:
	${MAKE} pdflatex
	${MAKE} bibtex
	${MAKE} pdflatex
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
