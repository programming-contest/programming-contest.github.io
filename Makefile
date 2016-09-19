SHELL = /usr/bin/env bash

GEM = gem2.3
CONFIG_FILE = ./Gemfile
VERSION = $(shell $(GEM) --version)

.PHONY: usage
usage:
	@echo "targets include: usage init all install update run"

.PHONY: all
all: init update install run

.PHONY: init
init:
	@apt install ruby-full ruby-dev

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
