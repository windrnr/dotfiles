# Commands to run in interactive sessions can go here
if status is-interactive 
end
fish_add_path -aP /usr/local/go/bin
fish_add_path -aP /home/lautaro/personal

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/lautaro/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# pyenv init - | source
theme_gruvbox dark medium
# source /opt/asdf-vm/asdf.fish 

