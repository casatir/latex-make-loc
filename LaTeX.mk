# path to the local latex-make directory
LATEX_MAKE_BASE_PATH := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))/.latex-make-files

LATEX_MAKE_PATH := $(LATEX_MAKE_BASE_PATH)/scripts/latex-make/

# adding latex-make directory to the PATH variable so that *.py
# scripts will be found
PATH := $(LATEX_MAKE_PATH):$(PATH)

# adding latex-make directory to the TEXINPUTS variable so that *.sty
# files will be found
export TEXINPUTS := .:$(LATEX_MAKE_BASE_PATH):$(TEXINPUTS)

# everything should be setup for LaTeX.mk to work
include $(LATEX_MAKE_PATH)/LaTeX.mk
