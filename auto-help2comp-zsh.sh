#! /bin/zsh

# ZSH Completion Generator

# zsh source for adding
GENCOMPL_PY=python2
source zsh-completion-generator.plugin.zsh
gencomp $1


## Optional -------------------------

DIR=~/.zsh/zsh-completions/src-pentest/
if [ ! -d "$DIR" ]; then
	mkdir $DIR
fi

sudo mv completions/_$1 $DIR
source ~/.zshrc
