#!/bin/sh

# Commands
TARGET_FILES=.bash_profile .vimrc .zshrc

delete:
	@for target in $(TARGET_FILES); do \
		if test -e ~/$$target; \
			then \
			echo "Deleted ~/$$target."; \
			rm $$target ; \
		fi \
	done
	@echo "The existing dotfiles and links have been deleted."

link:
	@for target in $(TARGET_FILES); do \
		if test -e $$target; \
			then \
			echo "$$target will be linked to '~/$$target'." ; \
			ln -sf $$(pwd)/$$target ~/$$target ; \
		fi \
	done
	@echo "The links to these dotfiles have been made."

install: delete link
	#echo "All links of dotfiles have been updated!"

