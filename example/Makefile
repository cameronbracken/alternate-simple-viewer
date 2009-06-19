loader := $(shell pdf2swf -L | grep default)
dir := $(shell dirname $(loader))

all: balls.swf balls.html

balls.swf: balls.pdf
	pdf2swf -l -B ../alternate_simple_viewer.swf -o balls.swf balls.pdf
	swfcombine --dummy -r 5 balls.swf -o balls.swf

balls.pdf:
	Rscript balls.R

balls.html:
	swfdump --html balls.swf > balls.html

clean:
	rm balls.pdf balls.swf balls.html __tmp__.swf