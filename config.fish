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

#Use "the-fuck"
thefuck --alias | source
