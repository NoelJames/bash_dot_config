##################################################
# ~/.bashrc                                      #
#     Startup a new shell (ie subshell by typing # 
#      bash w/no -i --login ) it only reads      #
#      this file.... not .bash_profile           #
#     This file is sourced by all bash shells on #
#      startup, whether interactive or not.      #
#     Putting output here will case scripts, scp #
#      and possibly other things to fail         #
##################################################
#    Set configs in .bash_profile and .bashrc    #
##################################################


##################################################
# Set configs                                    #
##################################################
# for host info function
HOST=$(hostname)   

# for resolving os differing switches
OS=$(uname)

# where the bashrc scripts are stored
BASHDIR=$HOME/.bashrc.d

##################################################
# User configs                                   #
##################################################
# may use screen
USESCREEN=0        
# whats your editor
EDITOR=emacs       


##################################################
# Function to load & sure source files exists
##################################################
function source_ifexists( ){
    [[ -f $1 ]] && . $1
}


##################################################
# Read (reread?) global bash profile             #
##################################################
source_ifexists /etc/profile



##################################################
# Colours make sure we have colours              #
##################################################
source_ifexists $BASHDIR/colours


#################################################
# Behavious (shopt, env settings, history,      #
#   paths, exports, aliases, etc )              #
#################################################
source_ifexists $BASHDIR/default.behaviours
source_ifexists $BASHDIR/$OS.behaviours
source_ifexists $BASHDIR/$HOST.behaviours


#################################################
# Functions (simple fuct else, use ~/bin)       #
#################################################
# File functions
source_ifexists $BASHDIR/default.functions
source_ifexists $BASHDIR/$OS.functions
source_ifexists $BASHDIR/$HOST.functions


#################################################
# Completions                                   #
#################################################
source_ifexists $BASHDIR/default.complete
source_ifexists $BASHDIR/$OS.complete
source_ifexists $BASHDIR/$HOST.complete






