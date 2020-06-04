# Yarn PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#Bindings
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
shopt -s autocd
shopt -s no_empty_cmd_completion # TAB even on an empty prompt No More 'Display all GAZILLION possibilities...'
#Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LANG="en_US.UTF-8"
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Save multi-line commands as one command
shopt -s cmdhist
# Autocorrect speeling errors in `cd`
shopt -s cdspell;

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

mkcd() {
  mkdir $1 && cd $1
}
gacp() {
  gaa && gcm  $1 && gpush
}
# # Optional EMOJI (USE if your terminal supports it ! )
 emojis=("🌈" "🚀" "🐳")
 EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
# # usage `$EMOJI`
export PS1='\[\033]0;Bash \007\]'
export PS1='⌚ \[\e[01;33m\]\A \[\e[01;36m\]in 📂 \w\[\e[01;35m\] `echo $(__git_ps1 "on 🌵 %s")` \n\[\e[01;32m\]$EMOJI> '
export PS2='Continue >'

#Python alias
alias python='winpty python.exe'
alias python3='winpty python.exe'
#Aliases
alias size="du -hcs ."
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337 --w --css style.css"
alias c='code'
alias ls='ls --color '
alias ll='ls -l'
alias la='ls -A'
alias open='explorer' # for windows explorer
alias sl='ls'
alias lls='ls'
alias man='tldr'
# Git aliases
alias ga='git add .'
alias gaa='git add .'
alias gcm='git commit -m '
alias gd='git diff'
alias gi='git init'
alias gpull='git pull'
alias gpush='git push'
alias gs='git status'
alias gss='git status -s'
alias grv='git remote -v'
