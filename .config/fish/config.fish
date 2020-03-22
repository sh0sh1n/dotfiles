eval (python3 -m virtualfish auto_activation compat_aliases projects)

# enable vi mode
fish_vi_key_bindings
# restore ctrl+f for autocomplete
function fish_user_key_bindings
    for mode in insert default visual
	bind -M $mode \cf forward-char
    end
end

# vim default editor
set -U EDITOR vim

# Enable nerd fonts
set -g nerd_fonts yes

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# virtualenv
set VIRTUALFISH_DEFAULT_PYTHON "python3"
