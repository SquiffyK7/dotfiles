#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export NPM_CONFIG_PREFIX=$HOME/.npm-global
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH="${JAVA_HOME}:${NPM_CONFIG_PREFIX}/bin:$PATH:${HOME}/bin"

xbindkeys
