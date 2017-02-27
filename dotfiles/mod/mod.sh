#on tungsteno
#use the path relative to bashrc
host=`cat /etc/hostname`

case $host in
	"tungsteno") 
		source $HOME/.my/dotfiles/mod/tungstenorc.sh;;
	"cube") 
		source $HOME/.my/dotfiles/mod/cuberc.sh;;
	"mora")
		source $HOME/.my/dotfiles/mod/morarc.sh;;
esac

