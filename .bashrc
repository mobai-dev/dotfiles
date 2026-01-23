# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias dnfu='sudo dnf upgrade --refresh'
alias hyprc='vi .config/hypr/hyprland.conf'
alias waybc='vi .config/waybar/config.jsonc'
alias waybs='vi .config/waybar/style.css'

echo "############################"
echo "# dnfu = dnf upgrade       #"
echo "# hyprc = vi hypr config   #"
echo "# waybc = vi waybar config #"
echo "# waybs = vi waybar style  #" 
echo "############################"
