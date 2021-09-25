#! /bin/zsh

# ZSH Completion Generator

# zsh source for adding
GENCOMPL_PY=python2
source ~/.zsh/zsh-completion-generator/zsh-completion-generator.plugin.zsh
gencomp $1

DIR=~/.zsh/zsh-completions/src-pentest/
if [ ! -d "$DIR" ]; then
	mkdir $DIR
fi

mv completions/_$1 $DIR

# Optional -------------------------
# source ~/.zshrc
