
info () {
	printf "\e[34m##\e[0m $1\n"
}

error () {
	printf "  \e[31m*\e[0m $1\n"
}

die () {
	printf "\e[91m✗\e[0m\n\n"
	exit -1
}

status () {
	printf "  \e[33m-\e[0m $1 "	
}

ok () {
	printf "\e[92m✓\033[0m\n"
}


info "Bash Dotfiles"

status "Creating marks derictory..."
export MARKPATH=$HOME/.marks
if ! [ -d $MARKPATH ]
then
	mkdir $MARKPATH
fi
ok

for dotfile in bash_profile bashrc marksrc aliases; do
	status "Linking .$dotfile..."
	ln -s "`pwd`/bash/$dotfile" "$HOME/.$dotfile" 2> /dev/null || die
	ok
done

printf "\n"
