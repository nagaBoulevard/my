# PROMPT {{{

#original PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\$ '
BOLD='\[\033[1m\]'
BLACK='\[\033[30m\]'
RED='\[\033[31m\]'
GREEN='\[\033[32m\]'
YELLOW='\[\033[33m\]'
BLUE='\[\033[34m\]'
PURPLE='\[\033[35m\]'
CYAN='\[\033[36m\]'
WHITE='\[\033[37m\]'
DEFAULT='\[\033[39m\]'
END='\[\033[0m\]'


PS1="\n\
${BOLD}\
${PURPLE}\w${BLACK} \$(git_branch)\n\
${PURPLE}=>$END "

# }}}


# activate touchpad for i3
xinput set-prop "DELL08E1:00 06CB:CD97 Touchpad" "libinput Tapping Enabled" 1

# set natural scrolling
xinput set-prop "DELL08E1:00 06CB:CD97 Touchpad" "libinput Natural Scrolling Enabled" 1
