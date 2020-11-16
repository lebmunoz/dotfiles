. ~/.config/fish/aliases.fish

# Path to Oh My Fish install.
#set -q XDG_DATA_HOME
#  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
#  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
#source $OMF_PATH/init.fish

#Use Alt+. to insert last argument of previous command
function fish_user_key_bindings
    bind \e. 'history-token-search-backward'
    end

#Use Vim as default visual editor
set -Ux EDITOR nvim

#Start ssh-agent
fish_ssh_agent

#Use "the-fuck"
#thefuck --alias | source
#
#Aumentar memória utilizada pelo Maven, para rodar os testes de sistema
set -xU MAVEN_OPTS -Xmx1024M -Xss128M -XX:MaxPermSize=1024M -XX:+CMSClassUnloadingEnabled

#Ruby path
set -gx PATH /home/luis/.gem/ruby/2.7.0/bin $PATH

#Android SDK path
#set -gx ANDROID_SDK_ROOT /home/luis/Android/Sdk

#Android SDK path
#set -gx PATH /home/luis/Android/Sdk/emulator $PATH

#set -gx PATH /home/luis/Android/Sdk/tools $PATH
