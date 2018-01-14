# PROMPT {{{

#original PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\$ '


next_hue() {
    color=$(( 30 + (++color % 8) ))
    echo -ne "\e[1;${color}m"    # change 1 to 0 for darker colors
}
PROMPT_COMMAND=next_hue
PS1="\n\w \$(git_branch)\n:;\[\e[0m\] "

