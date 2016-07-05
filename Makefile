#!/bin/sh

# Commands
LN=/bin/ln
RM=/bin/rm

# Variables for file names
BASH_PROFILE=bash_profile
VIMRC=vimrc

delete:
	@$(RM) ~/.$(BASH_PROFILE)
	@$(RM) ~/.$(VIMRC)
	@echo "existing links have been deleted."

link:
	@$(LN) -s $$(pwd)/.$(BASH_PROFILE) ~/.$(BASH_PROFILE)
	@$(LN) -s $$(pwd)/.$(VIMRC) ~/.$(VIMRC)
	@echo "links to these dotfiles have been made."

install: delete link
	@echo "All links of dotfiles have been updated!"
