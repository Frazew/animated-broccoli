NAME=$(shell basename `pwd`)
IN=$(NAME).md
OUT=$(NAME).pdf
LANG=fr-FR
THEME=custom

all:
	@echo Building pdf with pandoc
	pandoc --pdf-engine xelatex -t beamer -V theme:$(THEME) -V lang:$(LANG) $(IN) -o $(OUT)

clean:
	rm -Rf $(NAME).sty
