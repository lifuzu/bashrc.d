bu() { cp $@ $@.backup-`date +%y%m%d-%H%M%S`; echo "`date '+%Y-%m-%d %H:%M:%S'` backed up $PWD/$@" >> ~/.backups.log; }
