# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="crunch"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="nebirhos"
# ZSH_THEME="eastwood"
ZSH_THEME="josh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git rvm ruby rails z zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git rbenv ruby rails rake z zsh-autosuggestions node zsh-syntax-highlighting emotty emoji vscode git-flow)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ALIASES:

# DNF
# alias update="sudo dnf makecache --refresh && sudo dnf upgrade --refresh -y && flatpak update -y"
# alias clean="sudo dnf autoremove -y && dnf clean all && flatpak uninstall --unused -y && sudo journalctl --vacuum-time=1weeks"
# alias dnfr="sudo dnf autoremove"
# alias dnfs="dnf search"
# alias dnfi="sudo dnf install"

# Ubuntu
alias update="sudo apt-get clean && sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && flatpak update -y && sudo snap refresh"
alias clean="sudo apt autoremove -y && sudo apt autoclean -y && flatpak uninstall --unused -y && sudo journalctl --vacuum-time=1weeks"
alias apti="sudo apt update && sudo apt install"
# alias update-snap="sudo snap refresh"

# Github
alias up="cd .."
alias zshconfig="code-insiders ~/.zshrc"
alias ginit="git init ."
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gst="git status"
alias gaa="git add ."
alias ga="git add"
alias gpuoh="git push -u origin HEAD"
alias grc="git rebase --continue"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gplo="git pull origin"
alias gpho="git push origin"

# Rails
alias rs="rails s"
alias rsp="rails assets:precompile && rails s"
alias rc="rails c"
alias bd="bin/dev"
alias besqd="bundle exec sidekiq -q default"
alias rdc='rails db:create'
alias rdm='rails db:migrate'
alias rds='rails db:seed'
alias rdd='rails db:drop'
alias rdcms='rails db:create && rails db:migrate&& rails db:seed'
alias droptest='RAILS_ENV=test rails db:drop && RAILS_ENV=test rails db:create && RAILS_ENV=test rails db:migrate'
alias rswag='bundle exec rails swag'
alias droptestdb='rails db:environment:set RAILS_ENV=test && rails db:drop db:create db:migrate RAILS_ENV=test'
alias rspec='bundle exec rspec'
alias rubocop='bundle exec rubocop'
# alias for "foreman start -f Procfile.dev":
alias fmsd="foreman start -f Procfile.dev"

# Gnome Text Editor
alias gte="gnome-text-editor"
alias sgte="sudo gnome-text-editor"

# Flatpak
alias fli="flatpak install --noninteractive -y flathub"
alias flr="flatpak remove --noninteractive -y"
alias fr="flatpak repair"
alias fl="flatpak list"

# Docker
# alias dcu-clean="sudo lsof -i :5432 && sudo kill $(sudo lsof -ti :5432) && docker-compose up"
# To run docker-compose and kill postgres if it's running:
# "sudo kill $(sudo lsof -ti :5432) && docker-compose up"
# alias dcu="docker-compose up --build --detach"
alias dcu="docker-compose up"

# To terminate docker-compose and kill postgres if it's running:
alias dcd="docker-compose down"

alias dei="docker exec -it"
alias dea="docker-compose exec app sh "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Local variables
DB_HOST=localhost
DB_PORT=5432
DB_USER_NAME=postgres
DB_PASSWORD=postgres

# Postgres
export PATH=${PATH}:/usr/pgsql-15

# Rubymine
alias rubymine="sh $HOME/.local/share/JetBrains/Toolbox/apps/rubymine/bin/rubymine.sh"

# Fly.io
export FLYCTL_INSTALL_DIR="$HOME/.fly"
export PATH="$FLYCTL_INSTALL_DIR/bin:$PATH"

# To reboot zshrc after changes:
# source ~/.zshrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
