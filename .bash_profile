PATH=$PATH:~/Scripts/
PS1="
[\t] \033[0;33m\h \033[0m> \033[0;36m\u \033[0m: \033[1;31m\w \033[0m$(parse_git_branch)
\a \033[1;32m\$ \033[0m"


alias bashprofile="vim ~/.bash_profile"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

