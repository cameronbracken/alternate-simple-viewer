#Makefile for alternate simple viewer and example

all: alternate_simple_viewer.swf

alternate_simple_viewer.swf:
	swfc -o alternate_simple_viewer.swf alternate_simple_viewer.sc

dv := $(shell pdf2swf -B | grep default)
dir := $(shell dirname $(dv))

install: 
	cp alternate_simple_viewer.swf $(dir)/
	ln -sF $(dir)/alternate_simple_viewer.swf $(dv)

uninstall:
	ln -sF $(dir)/simple_viewer.swf $(dv)
	rm $(dir)/alternate_simple_viewer.swf

example: example/balls.html

example/balls.html:
	(cd example; make)

clean:
	rm alternate_simple_viewer.swf