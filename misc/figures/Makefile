ROOT_DIR := ../..
include $(ROOT_DIR)/make/Makefile.inc

DEPS := matplotlib,numpy

OUT_DIR := out

all:

start-jupyter: ## Start jupyter-lab
	@$(RUN) --with=jupyterlab jupyter-lab

## Example figure
generate-example-figure: | $(OUT_DIR)
	@$(RUN) src/example_figure.py
	@pdflatex -jobname=$(OUT_DIR)/example "\def\figureparam{$(OUT_DIR)/example.pgf} \input{standalone_fig.tex}"
	@pdf2svg $(OUT_DIR)/example.pdf $(OUT_DIR)/example.svg

deploy: ## Copy figures to docs
	@cp $(OUT_DIR)/*.svg $(ROOT_DIR)/docs/figures

clean:
	@rm -rf $(OUT_DIR)

$(OUT_DIR):
	@mkdir -p $(OUT_DIR)
