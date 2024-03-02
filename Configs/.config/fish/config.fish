echo "Dic sapientiae: Soror mea es, et prudentiam voca amicam tuam"
set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
alias ssh='kitten ssh'

alias explorer='dolphin'

function fish_remove_path
  if set -l index (contains -i "$argv" $fish_user_paths)
    set -e fish_user_paths[$index]
    echo "Removed $argv from the path"
  end
end

fish_add_path /opt/flutter/bin
fish_add_path $HOME/Android/Sdk/platform-tools
fish_add_path /usr/bin/brave