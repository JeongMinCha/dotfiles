# Dotfiles

This repository contains my dotfiles such as  

* .vimrc, 
* .bash_profile
* .zshrc
* .ssh/*

These dotfiles are used to save preferences of development.

# How to use Makefile

* delete -> delete all existing dotfiles on the user root path
* link -> link all dotfiles here to the user root dotfiles
* install -> delete & link

Fortunately, this Makefile only re-links the whitelist version of dotfiles.
