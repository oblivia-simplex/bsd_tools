for rc in "zshrc" "functions.rc" "colors.rc"; do
  [ -f ./${rc} ] && ln -sf `pwd`/${rc} ~/.${rc}
done

for rc in "envvars" "colors.rc" "functions.rc" "aliases"; do
  touch ~/.${rc} && source ~/.${rc}
done

function errbang () {
  (( $? != 0 )) && echo -ne "${PINK}! ${RESET}"
}


C1=${DARKGREY}
C2=${DARKGREEN}
C3=${TEAL}
PS1='%{%B$(errbang)%b${C1}$(gb)%}%{${C2}%}%c %{${C3}%}>> %{${RESET}%}'
setopt promptsubst

bindkey -e
