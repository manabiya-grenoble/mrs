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
	@echo '\def\figureparam{$(OUT_DIR)/example.pgf} \input{standalone_fig.tex}' | tectonic -
	@pdf2svg texput.pdf $(OUT_DIR)/example.svg
	@rm texput.pdf out/example.pgf

deploy: ## Copy figures to docs
	@cp $(OUT_DIR)/*.svg $(ROOT_DIR)/docs/figures

clean:
	@rm -rf $(OUT_DIR)

$(OUT_DIR):
	@mkdir -p $(OUT_DIR)
