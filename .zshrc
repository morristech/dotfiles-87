# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
[[ -e /etc/profile ]] && emulate sh -c 'source /etc/profile'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="prose"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Add gpg-agent
# Add tmux
plugins=(atom git bower brew bundler capistrano coffee gem git git-flow gitignore node npm nvm osx postgres pow rails rbenv rsync ruby ssh-agent textmate zsh_reload)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/boxen/homebrew/bin:/usr/local/heroku/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=.bin:${PATH}

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# load my boxen env
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
if [ ! -f /opt/boxen/env.sh ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# load homebrew installed libs
export LIBRARY_PATH="$LIBRARY_PATH:/opt/boxen/homebrew/lib"

# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

export PATH=$PATH:$HOME/.bin # Some cool stuff

# opt out of homebrew GA
export HOMEBREW_NO_ANALYTICS=1

# You will need to set up the PATH environment variable in your terminal to have access to Yarn’s binaries globally.
export PATH="$PATH:`yarn global bin`"

# added by travis gem
[ -f /Users/fernandes/.travis/travis.sh ] && source /Users/fernandes/.travis/travis.sh
