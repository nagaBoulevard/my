# Bioinforoot standard procedure

#[[ -z $BIOINFO_ROOT ]] && export BIOINFO_ROOT=/mnt/red/data/bioinfotree/
[[ -z $BIOINFO_ROOT ]] && export BIOINFO_ROOT=/mnt/red/gilo/bioinfotree/
export BIOINFO_HOST=tungsteno
source $BIOINFO_ROOT/local/share/bash/bashrc


# ALIASES {{{

alias cdprj='cd /mnt/red/gilo/bioinfotree/prj'

# }}}


# SETTINGS {{{
export XBIN=/mnt/red/gilo/xbin/
export PATH=$PATH:$XBIN

# set dircolors to ansi colors
eval `dircolors $HOME/.ansi-dircolors`

# }}}



