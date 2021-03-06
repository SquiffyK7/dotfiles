export NPM_CONFIG_PREFIX=$HOME/.npm-global
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH="${JAVA_HOME}:${NPM_CONFIG_PREFIX}/bin:$PATH:${HOME}/bin"
export TERM=xterm-256color
export TERMINAL=/usr/bin/termite
export VISUAL=vim
export EDITOR="$VISUAL"
# For running web tests at Caplin
export CHROME_BIN=/usr/bin/chromium
export ANDROID_SDK_ROOT="${HOME}/Android/Sdk"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Atlassian plugin binaries
export PATH=$PATH:/opt/atlassian-plugin-sdk/bin
# History size
export HISTSIZE=100000

# Make less display colours
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

alias ls='ls --color=auto'
alias ll='ls -halF'
alias vi='vim --servername VIM'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias py='python'
alias ds='du --max-depth=1 -h | sort -h'
alias less='less -M'
alias tree='tree -C'

alias andem='emulator -avd Pixel_2_API_28 -no-boot-anim -wipe-data -no-snapshot -no-audio'

alias patch-caplin-one='patch ${HOME}/stash-stuff/fe/converted/apps/fxtrader/server/java/proxy-target-FXPro/src/main/webapp/WEB-INF/jetty-env.xml ${HOME}/caplin-one-changes'

rightprompt() {
  if [[ "$1" == 0 ]]; then
    printf "%*s" $COLUMNS ":)"
  else
    printf "%*s" $COLUMNS ":("
  fi
}

#export PS1='\[$(STAT="$?"; tput sc; rightprompt "$STAT"; tput rc; tput setaf 2)\]\u@\h:\W\$\[$(tput sgr0)\] '
export PS1='\[$(tput sc; tput rc; tput setaf 4)\]\u@\h:\W\$\[$(tput sgr0)\] '

