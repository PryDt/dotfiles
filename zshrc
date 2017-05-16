#
#
# PryDt's Dotfiles - .zshrc
# 
# - oh-my-zsh config file
#


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/prydt/.oh-my-zsh

# Themes that I use...
# 1. gentoo
# 2. flazz
# 3. dpoggi
ZSH_THEME="gentoo"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=rem')

setopt RM_STAR_WAIT 

# Aliases
alias cls=clear # I'm too used to the Windows Commandline
alias discord=/usr/share/discord/Discord
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

source /etc/zsh_command_not_found

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7 # every week...

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z) # I try to keep this as small as possible...

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim' # Always VIm

# Compilation flags
export ARCHFLAGS="-arch x86_64"
