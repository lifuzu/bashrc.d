chr() {
  printf \\$(printf '%03o' $1)
}
ord() {
  printf '%d' "'$1"
}

# titlebar
ttb() {
  titlebar=${1:-${USER}@${HOSTNAME}: ${PWD/$HOME/~}}
  echo -ne "\033]0;$titlebar\007"
}

# backup
bu() {
  cp $@ $@.backup-`date +%y%m%d`; echo "`date +%Y-%m-%d` backed up $PWD/$@" >> ~/.backups.log;
}

# mdkir and cd
mcd() {
  mkdir -p $1; cd $1
}
