source ~/.bash_alias
source ~/.bash_paths

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[32m\]\u: \[\e[94m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# function prompt
# {
#     local BGreen='\e[1;32m'       # Green
#     local BIBlue='\e[1;94m'       # Blue
#     local GRAY="\[\033[0;37m\]"   # Gray
#     local BYellow='\e[1;33m'      # Yellow
#     local BLACK="\[\033[0;30m\]"
#     local CYAN='\e[\033[1;36m'
#     local WHITE="\[\033[0;37m\]"  # White
#     export PS1="${BGreen}\u${BGreen}@${BGreen}\h:${BIBlue}\w${WHITE}]
# $ "
# }
# prompt


WRITE_RNASEQ_LOG="T"; export WRITE_RNASEQ_LOG
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ] && [[ $WRITE_RNASEQ_LOG == "T" ]]; then echo "#$(pwd)" >> ~/.edited_logs/commands-$(date "+%Y-%m-%d").log; echo "$(history 1)" | cut -c 8- >> ~/.edited_logs/commands-$(date "+%Y-%m-%d").log; echo " " >> ~/.edited_logs/commands-$(date "+%Y-%m-%d").log;  fi'


# added by Anaconda2 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/thomasnicholson/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/thomasnicholson/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/thomasnicholson/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/thomasnicholson/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/thomasnicholson/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/thomasnicholson/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/thomasnicholson/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/thomasnicholson/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

conda deactivate
conda deactivate

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

##
# Your previous /Users/thomasnicholson/.bash_profile file was backed up as /Users/thomasnicholson/.bash_profile.macports-saved_2020-04-07_at_12:48:35
##

# MacPorts Installer addition on 2020-04-07_at_12:48:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

