eval (python3 -m virtualfish auto_activation compat_aliases projects)

# enable vi mode
fish_vi_key_bindings
# restore ctrl+f for autocomplete
function fish_user_key_bindings
    for mode in insert default visual
	bind -M $mode \cf forward-char
    end
end

# nvim default editor
set -U EDITOR nvim

# Enable nerd fonts
set -g nerd_fonts yes

# virtualenv
set VIRTUALFISH_DEFAULT_PYTHON "python3"

# rbenv setup
status --is-interactive; and source (rbenv init -|psub)
