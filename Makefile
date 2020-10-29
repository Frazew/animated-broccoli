.PHONY=all clean
LANG=fr-FR
THEME=custom

all: $(basename $(wildcard *.md))
clean:
	rm -rf *.pdf

%: %.md
	pandoc --pdf-engine xelatex -st beamer -V theme:$(THEME) -V lang:$(LANG) $^ -o $@.pdf
