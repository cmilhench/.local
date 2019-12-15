
# setting preferred options on ls
alias ll="ls -oahG"

# remove .DS_Store files
alias clean="find . -type f -name '*.DS_Store' -ls -delete"

# print brew dependency graph
alias brewd="brew list | while read cask; do printf \"\\e[0;34m \$cask -> \\e[0m\"; brew deps \$cask | awk '{printf(\" %s \", \$0)}'; echo; done"

# colourize and ignore dependencies
alias tree='tree -C -I node_modules'

# prompt user if overwriting during copy
alias cp='cp -i'

# prompt user when deleting a file
alias rm='rm -i'

# always print in human readable form
alias df="df -h"

#alias node="docker run -it --rm -v $(pwd):/app -w /app node"

