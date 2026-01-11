include make/Makefile.inc

ZENSICAL := zensical

.PHONY: serve build clean

## Serve site locally
serve: build
	@$(RUN) $(ZENSICAL) serve

## Build site
build: clean
	@$(RUN) $(ZENSICAL) build --clean

## Generate figures
generate-figures:
	@make -C misc/figures generate-example-figure deploy

## Clean site
clean:
	@rm -rf site
