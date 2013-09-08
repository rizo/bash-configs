export MARKPATH=$HOME/.marks

if [ -d $MARKPATH ]
then
	rm -r $MARKPATH
fi

unlink $HOME/.bash_profile 2> /dev/null
unlink $HOME/.bashrc 2> /dev/null
unlink $HOME/.marksrc 2> /dev/null
unlink $HOME/.aliases 2> /dev/null

