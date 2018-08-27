#============================================================================#
#=============================== General ====================================#
#============================================================================#

# Sources ===================================================================#
source $HOME/.zsh/aliases
source $HOME/.zsh/common
source $HOME/.zsh/colors
source $HOME/.zsh/exports
source $HOME/.zsh/functions
source $HOME/.zsh/hash
source $HOME/.zsh/path
source $HOME/.zsh/vars

# Options ===================================================================#
setopt autocd               # .. is shortcut for cd .. (etc)
setopt autoparamslash       # tab completing directory appends a slash
setopt autopushd            # cd automatically pushes old dir onto dir stack
setopt clobber              # allow clobbering with >, no need to use >!
setopt correct              # command auto-correction
setopt correctall           # argument auto-correction
setopt noflowcontrol        # disable start (C-s) and stop (C-q) characters
setopt nonomatch            # unmatched patterns are left unchanged
setopt histignorealldups    # filter duplicates from history
setopt histignorespace      # don't record commands starting with a space
setopt histverify           # confirm history expansion (!$, !!, !foo)
setopt ignoreeof            # prevent accidental C-d from exiting shell
setopt interactivecomments  # allow comments, even in interactive shells
setopt printexitvalue       # for non-zero exit status
setopt pushdignoredups      # don't push multiple copies of same dir onto stack
setopt pushdsilent          # don't print dir stack after pushing/popping
setopt sharehistory         # share history across shells


#============================================================================#
#============================= General Alias ================================#
#============================================================================#

# Fasd Alias ================================================================#
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# Auto-Open Alias ===========================================================#
alias -s vim=nvim       # Vim Files
alias -s sh=vim         # Shell Files
alias -s md=nvim        # Markdown Files
alias -s rmd=nvim       # R Markdown Files
alias -s tex=nvim       # Tex Files
alias -s text=nvim      # Text Files
alias -s pdf=           # Pdf Files
alias -s mp4=mpv        # Video Files 
alias -s mkv=mpv        # Video Files
alias -s avi=mpv        # Video Files
alias -s html=w3m       # Local Html

# Application Alias =========================================================#
alias mpv='open -na /Applications/mpv.app'    
alias r="ranger"        # File Browser
alias v="nvim"          # File Editor
alias y="mpsyt"         # Youtube
alias t="aria2c"        # Torrent 

# Directory Alias ===========================================================#
alias ~="cd ~"
alias c="cd ~/.config/"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"
alias ld='ls -d .[^.]*'
alias lf='ls'
alias la='ls -a'

# System Control Alias ======================================================#
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#============================================================================#
#============================= CLI Alias ====================================#
#============================================================================#

# Shell Alias ===============================================================#
alias lsa='ls -la'
alias mkd="mkdir"
alias cc='clear'
alias e='exit'

# Homebrew Alias ============================================================#
alias b="brew"
alias bi="brew install"

# Git Alias =================================================================#
alias g="git"
alias g/="git clone https://github.com/"
alias g-i="git init"
alias g-c="git commit -m"
alias g-a="git add -A"
alias g-s="git status"
alias g-d="git diff"
alias g-ra/="git remote add origin https://github.com/Kwask94/"
alias g-pom="git push origin master"
alias g-name="git config --global user.name "Kwask94""
alias g-email="git config --global user.email dev94@nym.hush.com"

# NPM Alias =================================================================#
alias ni="npm install"
alias nu="npm uninstall"
alias nup="npm update"
alias nri="rm -r node_modules && npm install"
alias ncd="npm-check -su"

# Taskworrior Alias =========================================================#
alias t="task"
alias tn="task add"
alias tl="task list"

# Youtube-dl Alias ==========================================================#
alias yt="youtube-dl --add-metadata -ic" 
alias yta="youtube-dl --add-metadata -xic"

# Tampletes Clone Alias ======================================================#
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"
alias TC='texclear'

# Themes ============================================================#

# Light Theme
alias c1='color classic_light'  
alias c2='color mexico-light'
alias c3='color harmonic-light'
alias c4='color solarized-light'
alias c5='color summerfruit-light'
alias c6='color tomorrow'
alias c7='color atelier-estuary-light'
alias c8='color atelier-forest-light'
# Dark Themes
alias cd1='color default-dark'
alias cd2='color eighties'
alias cd3='color gruvbox-dark-soft'
alias cd4='color harmonic-light'
alias cd5='color material-darker'
alias cd6='color ocean'
alias cd7='color snazzy'
alias cd8='color tomorrow-night'
alias cd9='color twilight'
alias cd10='color black-metal-bathory'
alias cd11='color black-metal-khold'
alias cd11='color chalk'
#============================================================================#
#============================= Lizy Accses ==================================#
#============================================================================#

# configs-files Alias =======================================================# 
alias fz="nvim ~/main/startup-config/roles/dotfiles/files/.zshrc"
alias fv="nvim ~/main/startup-config/roles/dotfiles/files/.vim/init.vim"
alias ft="nvim ~/main/startup-config/roles/dotfiles/files/.tmux.conf"
alias fc="nvim ~/.chunkwmrc"
alias fs="nvim ~/.skhdrc"
alias fq="nvim ~/.qutebrowser/config.py"

# sourcing ===================================================================#
alias sfz="source ~/main/startup-config/roles/dotfiles/files/.zshrc"
alias sfc="brew services restart chunkwm"
alias sfs="brew services restart skhd"
alias dot="cd ~/main/startup-config/roles/dotfiles/files"

# Echo Alias ================================================================#

alias pa=write
function write (){echo "$1">>~/.prince}

# Takes a hex color in the form of "RRGGBB" and outputs its luma (0-255, where
# 0 is black and 255 is white).
#
# Based on: https://github.com/lencioni/dotfiles/blob/b1632a04/.shells/colors
luma() {
  local COLOR_HEX=$1

  if [ -z "$COLOR_HEX" ]; then
    echo "Missing argument hex color (RRGGBB)"
    return 1
  fi

  # Extract hex channels from background color (RRGGBB).
  local COLOR_HEX_RED=$(echo "$COLOR_HEX" | cut -c 1-2)
  local COLOR_HEX_GREEN=$(echo "$COLOR_HEX" | cut -c 3-4)
  local COLOR_HEX_BLUE=$(echo "$COLOR_HEX" | cut -c 5-6)

  # Convert hex colors to decimal.
  local COLOR_DEC_RED=$((16#$COLOR_HEX_RED))
  local COLOR_DEC_GREEN=$((16#$COLOR_HEX_GREEN))
  local COLOR_DEC_BLUE=$((16#$COLOR_HEX_BLUE))

  # Calculate perceived brightness of background per ITU-R BT.709
  # https://en.wikipedia.org/wiki/Rec._709#Luma_coefficients
  # http://stackoverflow.com/a/12043228/18986
  local COLOR_LUMA_RED=$((0.2126 * $COLOR_DEC_RED))
  local COLOR_LUMA_GREEN=$((0.7152 * $COLOR_DEC_GREEN))
  local COLOR_LUMA_BLUE=$((0.0722 * $COLOR_DEC_BLUE))

  local COLOR_LUMA=$(($COLOR_LUMA_RED + $COLOR_LUMA_GREEN + $COLOR_LUMA_BLUE))

  echo "$COLOR_LUMA"
}

color() {
  local SCHEME="$1"
  local BASE16_DIR=~/.config/base16-shell/scripts
  local BASE16_CONFIG_PREVIOUS="${BASE16_CONFIG}.previous"
  local STATUS=0

  if [ $# -eq 0 ]; then
    if [ -s "$BASE16_CONFIG" ]; then
      cat ~/.config/nvim/.base16
      return
    else
      SCHEME=help
    fi
  fi

  __color() {
    SCHEME=$1
    FILE="$BASE16_DIR/base16-$SCHEME.sh"
    if [[ -e "$FILE" ]]; then
      local BG=$(grep color_background= "$FILE" | cut -d \" -f2 | sed -e 's#/##g')
      local LUMA=$(luma "$BG")
      local LIGHT=$((LUMA > 127.5))
      local BACKGROUND=dark
      if [ "$LIGHT" -eq 1 ]; then
        BACKGROUND=light
      fi

      if [ -e "$BASE16_CONFIG" ]; then
        cp "$BASE16_CONFIG" "$BASE16_CONFIG_PREVIOUS"
      fi

      echo "$SCHEME" >! "$BASE16_CONFIG"
      echo "$BACKGROUND" >> "$BASE16_CONFIG"
      sh "$FILE"

      if [ -n "$TMUX" ]; then
        local CC=$(grep color18= "$FILE" | cut -d \" -f2 | sed -e 's#/##g')
        if [ -n "$BG" -a -n "$CC" ]; then
          command tmux set -a window-active-style "bg=#$BG"
          command tmux set -a window-style "bg=#$CC"
          command tmux set -g pane-active-border-bg "#$CC"
          command tmux set -g pane-border-bg "#$CC"
        fi
      fi
    else
      echo "Scheme '$SCHEME' not found in $BASE16_DIR"
      STATUS=1
    fi
  }

  case "$SCHEME" in
  help)
    echo 'color [tomorrow-night|ocean|grayscale-light|...]'
    echo
    echo 'Available schemes:'
    color ls
    return
    ;;
  ls)
    find "$BASE16_DIR" -name 'base16-*.sh' | \
      sed -E 's|.+/base16-||' | \
      sed -E 's/\.sh//' | \
      column
      ;;
  -)
    if [[ -s "$BASE16_CONFIG_PREVIOUS" ]]; then
      local PREVIOUS_SCHEME=$(head -1 "$BASE16_CONFIG_PREVIOUS")
      __color "$PREVIOUS_SCHEME"
    else
      echo "warning: no previous config found at $BASE16_CONFIG_PREVIOUS"
      STATUS=1
    fi
    ;;
  *)
    __color "$SCHEME"
    ;;
  esac

  unfunction __color
  return $STATUS
}

function () {
  if [[ -s "$BASE16_CONFIG" ]]; then
    local SCHEME=$(head -1 "$BASE16_CONFIG")
    local BACKGROUND=$(sed -n -e '2 p' "$BASE16_CONFIG")
    if [ "$BACKGROUND" != 'dark' -a "$BACKGROUND" != 'light' ]; then
      echo "warning: unknown background type in $BASE16_CONFIG"
    fi
    color "$SCHEME"
  else
    # Default.
    color tomorrow-night
  fi
}
#
# Teh H4xx
#

if [ "$(uname)" = "Darwin" ]; then
  # Suppress unwanted Homebrew-installed stuff.
  if [ -e /usr/local/share/zsh/site-functions/_git ]; then
    mv -f /usr/local/share/zsh/site-functions/{,disabled.}_git
  fi
fi

#
# Completion
#

fpath=($HOME/.zsh/completions $fpath)

autoload -U compinit
compinit -u

# Make completion:
# - Case-insensitive.
# - Accept abbreviations after . or _ or - (ie. f.b -> foo.bar).
# - Substring complete (ie. bar -> foobar).
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Colorize completions using default `ls` colors.
zstyle ':completion:*' list-colors ''

#
# Correction
#

# exceptions to auto-correction
alias bundle='nocorrect bundle'
alias cabal='nocorrect cabal'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias stack='nocorrect stack'
alias sudo='nocorrect sudo'

#
# Prompt
#

autoload -U colors
colors

# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{green}●%f" # default 'S'
zstyle ':vcs_info:*' unstagedstr "%F{red}●%f" # default 'U'
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:git+set-message:*' hooks git-untracked
zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
zstyle ':vcs_info:git*:*' actionformats '[%b|%a%m%c%u] ' # default ' (%s)-[%b|%a]%c%u-'
zstyle ':vcs_info:hg*:*' formats '[%m%b] '
zstyle ':vcs_info:hg*:*' actionformats '[%b|%a%m] '
zstyle ':vcs_info:hg*:*' branchformat '%b'
zstyle ':vcs_info:hg*:*' get-bookmarks true
zstyle ':vcs_info:hg*:*' get-revision true
zstyle ':vcs_info:hg*:*' get-mq false
zstyle ':vcs_info:hg*+gen-hg-bookmark-string:*' hooks hg-bookmarks
zstyle ':vcs_info:hg*+set-message:*' hooks hg-message

function +vi-hg-bookmarks() {
  emulate -L zsh
  if [[ -n "${hook_com[hg-active-bookmark]}" ]]; then
    hook_com[hg-bookmark-string]="${(Mj:,:)@}"
    ret=1
  fi
}

function +vi-hg-message() {
  emulate -L zsh

  # Suppress hg branch display if we can display a bookmark instead.
  if [[ -n "${hook_com[misc]}" ]]; then
    hook_com[branch]=''
  fi
  return 0
}

function +vi-git-untracked() {
  emulate -L zsh
  if [[ -n $(git ls-files --exclude-standard --others 2> /dev/null) ]]; then
    hook_com[unstaged]+="%F{blue}●%f"
  fi
}

RPROMPT_BASE="\${vcs_info_msg_0_}%F{blue}%~%f"
setopt PROMPT_SUBST

# Anonymous function to avoid leaking NBSP variable.
function () {
  if [[ -n "$TMUX" ]]; then
    local LVL=$(($SHLVL - 1))
  else
    local LVL=$SHLVL
  fi
  if [[ $EUID -eq 0 ]]; then
    local SUFFIX=$(printf '#%.0s' {1..$LVL})
  else
    local SUFFIX=$(printf '\$%.0s' {1..$LVL})
  fi
  if [[ -n "$TMUX" ]]; then
    # Note use a non-breaking space at the end of the prompt because we can use it as
    # a find pattern to jump back in tmux.
    local NBSP=' '
    export PS1="%F{green}${SSH_TTY:+%n@%m}%f%B${SSH_TTY:+:}%b%F{blue}%1~%F{yellow}%B%(1j.*.)%(?..!)%b%f%F{red}%B${SUFFIX}%b%f${NBSP}"
    export ZLE_RPROMPT_INDENT=0
  else
    # Don't bother with ZLE_RPROMPT_INDENT here, because it ends up eating the
    # space after PS1.
    export PS1="%F{green}${SSH_TTY:+%n@%m}%f%B${SSH_TTY:+:}%b%F{blue}%1~%F{yellow}%B%(1j.*.)%(?..!)%b%f%F{red}%B${SUFFIX}%b%f "
  fi
}

export RPROMPT=$RPROMPT_BASE
export SPROMPT="zsh: correct %F{red}'%R'%f to %F{red}'%r'%f [%B%Uy%u%bes, %B%Un%u%bo, %B%Ue%u%bdit, %B%Ua%u%bbort]? "

#
# History
#

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#
# Bindings
#

bindkey -e # emacs bindings, set to -v for vi bindings

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\e[A" history-beginning-search-backward-end  # cursor up
bindkey "\e[B" history-beginning-search-forward-end   # cursor down

autoload -U select-word-style
select-word-style bash # only alphanumeric chars are considered WORDCHARS

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line

bindkey ' ' magic-space # do history expansion on space

# Replace standard history-incremental-search-{backward,forward} bindings.
# These are the same but permit patterns (eg. a*b) to be used.
bindkey "^r" history-incremental-pattern-search-backward
bindkey "^s" history-incremental-pattern-search-forward

# Make CTRL-Z background things and unbackground them.
function fg-bg() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}
zle -N fg-bg
bindkey '^Z' fg-bg

#
# Other
#

#
# Third-party
#

CHRUBY=/usr/local/share/chruby
test -e "$CHRUBY/chruby.sh" && . "$CHRUBY/chruby.sh"
test -e "$CHRUBY/auto.sh" && . "$CHRUBY/auto.sh"

#
# Hooks
#

autoload -U add-zsh-hook

function set-tab-and-window-title() {
  emulate -L zsh
  local CMD="${1:gs/$/\\$}"
  print -Pn "\e]0;$CMD:q\a"
}

function update-window-title-precmd() {
  emulate -L zsh
  set-tab-and-window-title `history | tail -1 | cut -b8-`
}
add-zsh-hook precmd update-window-title-precmd

function update-window-title-preexec() {
  emulate -L zsh
  setopt extended_glob

  # skip ENV=settings, sudo, ssh; show first distinctive word of command;
  # mostly stolen from:
  #   https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/termsupport.zsh
  set-tab-and-window-title ${2[(wr)^(*=*|mosh|ssh|sudo)]}
}
add-zsh-hook preexec update-window-title-preexec

typeset -F SECONDS
function record-start-time() {
  emulate -L zsh
  ZSH_START_TIME=${ZSH_START_TIME:-$SECONDS}
}

add-zsh-hook preexec record-start-time

function report-start-time() {
  emulate -L zsh
  if [ $ZSH_START_TIME ]; then
    local DELTA=$(($SECONDS - $ZSH_START_TIME))
    local DAYS=$((~~($DELTA / 86400)))
    local HOURS=$((~~(($DELTA - $DAYS * 86400) / 3600)))
    local MINUTES=$((~~(($DELTA - $DAYS * 86400 - $HOURS * 3600) / 60)))
    local SECS=$(($DELTA - $DAYS * 86400 - $HOURS * 3600 - $MINUTES * 60))
    local ELAPSED=''
    test "$DAYS" != '0' && ELAPSED="${DAYS}d"
    test "$HOURS" != '0' && ELAPSED="${ELAPSED}${HOURS}h"
    test "$MINUTES" != '0' && ELAPSED="${ELAPSED}${MINUTES}m"
    if [ "$ELAPSED" = '' ]; then
      SECS="$(print -f "%.2f" $SECS)s"
    elif [ "$DAYS" != '0' ]; then
      SECS=''
    else
      SECS="$((~~$SECS))s"
    fi
    ELAPSED="${ELAPSED}${SECS}"
    local ITALIC_ON=$'\e[3m'
    local ITALIC_OFF=$'\e[23m'
    export RPROMPT="%F{cyan}%{$ITALIC_ON%}${ELAPSED}%{$ITALIC_OFF%}%f $RPROMPT_BASE"
    unset ZSH_START_TIME
  else
    export RPROMPT="$RPROMPT_BASE"
  fi
}

add-zsh-hook precmd report-start-time

add-zsh-hook precmd bounce

function auto-ls-after-cd() {
  emulate -L zsh
  # Only in response to a user-initiated `cd`, not indirectly (eg. via another
  # function).
  if [ "$ZSH_EVAL_CONTEXT" = "toplevel:shfunc" ]; then
    ls -a
  fi
}
add-zsh-hook chpwd auto-ls-after-cd

# for prompt
add-zsh-hook precmd vcs_info

# adds `cdr` command for navigating to recent directories
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# enable menu-style completion for cdr
zstyle ':completion:*:*:cdr:*:*' menu selection

# fall through to cd if cdr is passed a non-recent dir as an argument
zstyle ':chpwd:*' recent-dirs-default true

# Local and host-specific overrides.

LOCAL_RC=$HOME/.zshrc.local
test -f $LOCAL_RC && source $LOCAL_RC

DEV_RC=$HOME/.zsh/host/dev-star
if [ $(hostname -s) =~ '^dev(vm)?[[:digit:]]+' ]; then
  test -f $DEV_RC && source $DEV_RC
fi

HOST_RC=$HOME/.zsh/host/$(hostname -s)
test -f $HOST_RC && source $HOST_RC

#
# Plug-ins
#

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=59'

# Uncomment this to get syntax highlighting:
 source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# /etc/motd
#

if [ -e /etc/motd ]; then
  if ! cmp -s $HOME/.hushlogin /etc/motd; then
    tee $HOME/.hushlogin < /etc/motd
  fi
fi
