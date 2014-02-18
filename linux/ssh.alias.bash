alias ssh="cat ~/.bashrc.d/ssh/config.d/* > ~/.ssh/config; ssh"

# 1. ~/.bashrc.d/ssh/config.d exist? no, notify to install bashrc.d;
# 2. ~/.ssh/config exist? backup/rotate it;
#
# Reference: http://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one
