# Linux Aliases

gilinux() {
    echo "## Linux Command Aliases ##"
    echo "# dnfu = dnf upgrade       "
    echo "# hyprc = vi hypr config   "
    echo "# waybc = vi waybar config "
    echo "# waybs = vi waybar style  " 
    echo "###########################"
}

alias dnfu='sudo dnf upgrade --refresh'
alias hyprc='vi ~/.config/hypr/hyprland.conf'
alias waybc='vi ~/.config/waybar/config.jsonc'
alias waybs='vi ~/.config/waybar/style.css'
