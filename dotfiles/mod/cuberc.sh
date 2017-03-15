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
${GREEN}\$(prompt_time) ${DEFAULT}in ${GREEN}\h:\$(pwd) ${YELLOW}\$(git_branch)\n\
${BLACK}>$END "


PS1="\n\
${BOLD}\
${GREEN}\w${BLACK} \$(git_branch)\n\
${WHITE}>$END "

# }}}


