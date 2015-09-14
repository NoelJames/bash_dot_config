#################################################
# ~/.bash_profile                               #
#     executed by bash every time you log in to #
#      the system.                              #
#     Should load on interactive only, so put   #
#      settings that fail on interactive here   #
#################################################
#    Set configs in .bash_profile and .bashrc   #
#################################################


#################################################
# Set var interactive, if "$-" has i, and this file 
#   is sourced we can be pretty sure its an 
#   interactive session
#################################################
INTERACTIVE=0
case "$-" in
  *i*)  INTERACTIVE=1
esac


#################################################
# Load Bashrc (and configs)                     #  
#################################################
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc


###################################################
# Startup Interactive Things                      #  
###################################################
# Startup Screen if not interactive                 
# $SHLVL: Incremented by one each time an instance 
#  of bash is started         
if [ $USESCREEN -eq 1 -a $INTERACTIVE -eq 1 -a  $SHLVL -eq 1 ]; then
    screen -d -RR
fi


###################################################
# Provide a window/tab title                      #
###################################################
if [ $INTERACTIVE -eq 1 ]; then
    tabname $HOSTNAME;
    winname $HOSTNAME;
fi
