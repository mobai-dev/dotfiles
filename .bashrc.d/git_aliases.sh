# Git Aliases

gigit() {
    echo "################# Git Command Aliases #################"
    echo "#"
    echo "# gcp <message> = git commit -am <message> && git push"
    echo "# gcb <branch-name> = git checkout -b <branch-name>"		
    echo "# gst [message] = git stash push -m [message]"		
    echo "# gs = git status"		
    echo "# gp = git pull"		
    echo "#"		
    echo "########################################################"		
}

gcp() {
    if [ -z "$1" ]; then
        echo "No commit message provided. Aborting."
        return 1
    fi
    
    git commit -am "$1" && git push
}

gcb() {
    if [ -z "$1" ]; then
        echo "No branch name provided. Aborting."
        return 1
    fi

    git checkout -b "$1" 
}

gst() {
    if [ -z "$1" ]; then
        echo "No message provided. The stash will have no message."
        git stash
    else
        git stash push -m "$1"
    fi
}

alias gs="git status"
alias gp="git pull"
