autoload -U promptinit && promptinit # initialise the prompt system

prompt off

# git prompt ---------------------------------------------------
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
#zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' formats "%F{240}(%b) %r%f"
zstyle ':vcs_info:*' enable git
# git prompt ---------------------------------------------------

