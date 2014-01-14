bashrc.d
========

bashrc.d collects some alias, path, ps1, and editor definitions

1. Clone the repo to your $HOME directory:
<pre><code>
cd ~
git clone https://github.com/lifuzu/bashrc.d.git .bashrc.d 
</code></pre>
2. Append the following content to your ~/.bashrc
<pre><code>
OS=$( uname | tr '[:upper:]' '[:lower:]')
if [ -d $HOME/.bashrc.d ]; then
    for SCRIPT in $( ls $HOME/.bashrc.d/${OS}/* ); do
        . ${SCRIPT}
    done
fi
</code></pre>
3. Enable it run the command:
<pre><code>
source ~/.bashrc
</code></pre>
4. Or open a new terminal
5. Done!
