#!/bin/bash

PATH_SUBLIME="$HOME/.config/sublime-text-2/Packages"
PATH_ETHCLL="$HOME/.config/sublime-text-2/Packages/EthereumCLL"
PATH_WHOLEFILE="$PATH_ETHCLL/EthereumCLL.tmLanguage"

if [ ! -d $PATH_SUBLIME ]; then
	echo "Sorry you don't seem to have a sublime .config/ path";
	exit 0;
fi

if [ ! -d $PATH_ETHCLL ]; then
	echo "Created directory for you in your sublime text packages, for new syntax"
	mkdir $PATH_ETHCLL
fi


cp ethereumcll.syntax.plist $PATH_WHOLEFILE

if [ -e $PATH_WHOLEFILE ]; then
	echo "Awesome, successfully installed EthereumCLL syntax highlighter for sublime text"
fi 
