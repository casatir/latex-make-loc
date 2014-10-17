# Local version of latex-make

Clone the repos using

    git clone --recursive https://github.com/casatir/latex-make-loc.git

or if you already have cloned the repo

    git submodule update --init --recursive

then

    make

and in your `Makefile` just type

    -inlcude /path/to/the/latex-make-loc-repo/LaTeX.mk
