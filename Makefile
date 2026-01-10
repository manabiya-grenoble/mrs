include Makefile.inc

ZENSICAL := zensical

.PHONY: serve build clean

## Serve site locally
serve: build
	@$(RUN) $(ZENSICAL) serve

## Build site
build: clean
	@$(RUN) $(ZENSICAL) build --clean

## Clean site
clean:
	@rm -rf site
