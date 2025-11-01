LATEX_PROCESSOR := tectonic
NOTES := $(basename $(wildcard *.tex))

OPEN_TARGETS = $(addprefix open-, $(NOTES))

help: URL := github.com/drdv/makefile-doc/releases/latest/download/makefile-doc.awk
help: DIR := $(HOME)/.local/share/makefile-doc
help: SCR := $(DIR)/makefile-doc.awk
help: VFLAG := -v SUB='$$(OPEN_TARGETS):open-:$(NOTES)'
help: ## Show this help
	@test -f $(SCR) || wget -q -P $(DIR) $(URL)
	@awk $(VFLAG) -f $(SCR) $(MAKEFILE_LIST)

## Generate all notes
all: $(addsuffix .pdf, $(NOTES))

%.pdf: %.tex
	@$(LATEX_PROCESSOR) $<

##
$(OPEN_TARGETS): open-%: %.pdf
	@xdg-open $< &

clean: ## Clean all PDF files
	@rm -rf *.pdf
