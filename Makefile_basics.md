# Make


## Resources

https://www.gnu.org/software/make/

https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/

https://makefiletutorial.com/

## What is Make

GNU Make is a tool which controls the generation of executables and other non-source files of a program from the program's source files.

Make gets its knowledge of how to build your program from a file called the makefile, which lists each of the non-source files and how to compute it from other files. When you write a program, you should write a makefile for it, so that it is possible to use Make to build and install the program.




## List of basic commands

##### Assignment

    uglify = $(uglify)        # lazy assignment
    compressor := $(uglify)   # immediate assignment
    prefix ?= /usr/local      # safe assignment


##### Magic commands

    -	Ignore errors
    @	Don’t print command

    build:
        @echo "compiling"
        -gcc $< $@

    out.o: src.c src.h
    $@   # "out.o" (target)
    $<   # "src.c" (first prerequisite)
    $^   # "src.c src.h" (all prerequisites)

    %.o: %.c
    $*   # the 'stem' with which an implicit rule matches ("foo" in "foo.c")

    also:
    $+   # prerequisites (all, with duplication)
    $?   # prerequisites (new ones)
    $|   # prerequisites (order-only?)

    $(@D) # target directory