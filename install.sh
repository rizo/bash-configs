
export MARKPATH=$HOME/.marks

if ! [ -d $MARKPATH ]
then
	mkdir $MARKPATH
fi

ln -s `pwd`/bash_profile $HOME/.bash_profile
ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/marksrc $HOME/.marksrc
ln -s `pwd`/aliases $HOME/.aliases

