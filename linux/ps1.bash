parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
parse_git_remote() {
  git for-each-ref --format='%(upstream:short)' $(git symbolic-ref -q HEAD 2> /dev/null) 2> /dev/null
}
render_git_info() {
  branch=$(parse_git_branch)
  if [ $branch ]; then
    echo "($(parse_git_remote)->$(parse_git_branch))"
  fi
}
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;33m\]\$(render_git_info)\[\033[00m\]$ "
