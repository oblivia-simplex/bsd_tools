alias lab="ssh $LAB"
alias flatline="ssh 192.168.2.99"
alias ls="colorls -G"
alias ll="ls -lha"
alias brc="source ~/.zshrc"
alias xxx="xscreensaver-command -lock"
alias dice="rlwrap dice"

function killall () 
{
  killer="kill"
  pgrep "^${1}$"  | xargs $killer
} 

function hello ()
{
  to=$1
  cat | msmtp -a laboriacuboniks@bastardi.net $to
}

function xkcdpasswd ()
{
  sort --sort=random /usr/share/dict/words \
          | head -n $1 \
          | tr \\n - \
          | sed s:-$:: && echo
}

function shred ()
{
  dd if=/dev/urandom of=$1 count=$(wc -c $1 | awk '{ print $1 }') bs=1
}

function swap ()
{
  t=`mktemp`
  mv $1 $t && \
  mv $2 $1 && \
  mv $t $2 && \
  echo "swapped $1 and $2"
}


