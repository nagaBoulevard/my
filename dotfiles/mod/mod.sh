#on tungsteno
#use the path relative to bashrc
if [ -e /etc/hostname ]; then
    host=`cat /etc/hostname` 
else
    # in chromeos, no /etc/hostname exists
    host="chromeos"
fi


case $host in
    "tungsteno") 
        source $HOME/.my/dotfiles/mod/tungstenorc.sh;;
    "cube") 
        source $HOME/.my/dotfiles/mod/cuberc.sh;;
    "mora")
        source $HOME/.my/dotfiles/mod/morarc.sh;;
    "chromeos")
        source $HOME/.my/dotfiles/mod/chromeosrc.sh;;
esac

