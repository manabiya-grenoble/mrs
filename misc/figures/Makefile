ROOT_DIR := ../..
include $(ROOT_DIR)/make/Makefile.inc

DEPS := jupyterlab,matplotlib,numpy

OUT_DIR := out

all:

start-jupyter: ## Start jupyter-lab
	@$(RUN) jupyter-lab

generate-example-figure: ## Example figure
	@$(RUN) src/example_figure.py
#pdflatex -jobname=axes "\def\myfigure{example.pgf} \input{standalone_fig.tex}"
	@echo '\def\figureparam{out/example.pgf} \input{standalone_fig.tex}' | tectonic -
	@pdf2svg texput.pdf out/example.svg
	@rm texput.pdf out/example.pgf

deploy: ## Copy figures to docs
	@cp $(OUT_DIR)/*.svg $(ROOT_DIR)/docs/figures

clean:
	@rm -rf $(OUT_DIR)
