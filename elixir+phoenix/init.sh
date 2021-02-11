#!/bin/bash
echo 'User is: '
whoami

shopt -s expand_aliases

ALIASES_FILE=~/.bash_aliases_elixir_phoenix

if [ ! -e $ALIASES_FILE ]; then
	echo 'Creating aliases...'
	touch $ALIASES_FILE
	
	echo 'alias mix="docker-compose run --rm phoenix mix"' >> $ALIASES_FILE
	echo  'mix..........[OK]'
    	echo 'Aliases file $ALIASES_FILE created.'
fi

source $HOME/.bash_aliases_elixir_phoenix
echo 'Aliases refreshed.'

