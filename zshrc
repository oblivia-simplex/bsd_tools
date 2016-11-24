for rc in "zshrc" "functions.rc" "colors.rc"; do
  [ -f ./${rc} ] && ln -sf `pwd`/${rc} ~/.${rc}
done

source ~/.envvars
source ~/.colors.rc
source ~/.functions.rc
source ~/.aliases

function errbang () {
  (( $? != 0 )) && echo -ne "${PINK}! ${RESET}"
}


C1=${DARKGREY}
C2=${DARKGREEN}
C3=${TEAL}
PS1='%{%B$(errbang)%b${C1}$(gb)%}%{${C2}%}%c %{${C3}%}>> %{${RESET}%}'
setopt promptsubst


