#on tungsteno
#use the path relative to bashrc
if [ -e /proc/sys/kernel/hostname ]; then
    host=`cat /proc/sys/kernel/hostname` 
else
    # in chromeos, no /etc/hostname exists
    host="chromeos"
fi


case $host in
    login1)
	    source $HOME/.my/dotfiles/mod/osrrc.sh;;
	b[0-9]*)
	    source $HOME/.my/dotfiles/mod/osrrc.sh;;
    tungsteno) 
        source $HOME/.my/dotfiles/mod/tungstenorc.sh;;
    cube) 
        source $HOME/.my/dotfiles/mod/cuberc.sh;;
    mora)
        source $HOME/.my/dotfiles/mod/morarc.sh;;
    chromeos)
        source $HOME/.my/dotfiles/mod/chromeosrc.sh;;
esac
