purpule="\e[0;95m"
blue="\e[0;94m"
cancel="\e[m"

echo -e "${blue}
 _    _        _                               
| |  | |      | |                              
| |  | |  ___ | |  ___   ___   _ __ ___    ___ 
| |/\| | / _ \| | / __| / _ \ | '_ \` _ \  / _ \ 
\  /\  /|  __/| || (__ | (_) || | | | | ||  __/
 \/  \/  \___||_| \___| \___/ |_| |_| |_| \___|                          
${cancel}"

# Setting bash prompt 
export PS1="\[${purpule}\]\w\[${cancel}\]: "

# Launch terminal
bash --norc