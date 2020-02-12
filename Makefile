.PHONY: build lint

build:
	./scripts/build.sh

lint:
	find . -name "*.yml" | xargs yamllint &&\
	find . -name "*.sh" | xargs shellcheck
