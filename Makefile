SHELL = /usr/bin/env bash

GEM = gem
CONFIG_FILE = ./Gemfile
VERSION = $(shell $(GEM) --version)

.PHONY: usage
usage:
	@echo "targets include: usage all install update run"

.PHONY: all
all: update install run

.PHONY: install
install:
	@bundle install

.PHONY: update
update:
  @$(GEM) install rubygems-update
  @update_rubygems
  @$(GEM) update --system

.PHONY: run
run:
	@bundle exec jekyll serve
