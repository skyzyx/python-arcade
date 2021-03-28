#-------------------------------------------------------------------------------
# Running `make` will show the list of subcommands that will run.

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

all: help

.PHONY: help
## help: prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' | sed -e 's/^/ /'

#-------------------------------------------------------------------------------
# Clean

# .PHONY: clean
# ## clean: [clean] Runs ALL cleaning tasks.
# clean:

#-------------------------------------------------------------------------------
# Documentation

# .PHONY: docs
# ## docs: [docs] Runs ALL documentation tasks.
# docs:

#-------------------------------------------------------------------------------
# Linting

.PHONY: lint-py
## lint-py: [lint] Runs `yapf` against all Python (*.py) code with a standardized set of rules.
lint-py:
	@ echo " "
	@ echo "=====> Running yapf..."
	cd src/ && yapf --in-place --recursive .

.PHONY: lint
## lint: [lint] Runs ALL linting/validation tasks.
lint: lint-py

#-------------------------------------------------------------------------------
# Building/Running

.PHONY: run
## run: [run] Runs the game.
run:
	@ python src/main.py

#-------------------------------------------------------------------------------
# Testing

# .PHONY: test
# ## test: [test] Runs ALL testing tasks.
# test:
