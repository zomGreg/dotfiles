# Git aliases
alias gba='git branch -a'
alias gpo='git push -u origin'
alias gco='git checkout'
alias gcm='git commit -m'
alias ga='git add -A'
alias gp='git push'
alias gu='git up'
alias s='git status'
alias gfu='git fetch upstream'
alias glp='git log --pretty=oneline | head -n 10'
alias pu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
# shows the twenty most recent branch commits
alias gbd='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%ci %cr" $branch | head -n 1` \\t$branch; done | sort -r | head -n 20'
