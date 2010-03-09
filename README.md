The default simple viewer included with [SWFTools](http://www.swftools.org/) is very basic, only including back and forward buttons, so I extended it a bit. The alternate simple viewer viewer provides a play, pause, skip forward and skip back function.  There was originally a goto button but I scrapped it because it was buggy. 


__Install__
The viewer is provided precompiled, so no need to do it again but it is simple enough if you want to.  Just type:

    make clean
    make 

You can use this as your viewer for a flash movie 

    pdf2swf -l -B alternate-simple-viewer.swf -o file.swf file.pdf

To make this your default viewer then type:

    make install

Depending on where swftools is installed you may need to run the above command as root. If you dont care about having your flash movie play at 20 fps then you can use

    pdf2swf -l -b -o file.swf file.pdf

otherwise use

    swfcombine --dummy -r 5 file.swf -o file.swf

to adjust the frame rate to 5 fps. 


__Example__

The `example/` directory shows the usage in practice.  To run the example you must have [R](http://r-project.org/) installed and of course [SWFTools](http://www.swftools.org/).  To run the example type:

    make example

_OR_

    cd example/
    make

Then view the example file `balls.html` in a web browser or `balls.swf` with a flash player.

__Uninstall__

    make uninstall
