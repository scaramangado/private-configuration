open() {
	xdg-open $@ > /dev/null 2>&1 &|
}

# Java

alias java8="/usr/lib/jvm/java-8-adoptopenjdk/bin/java"
alias java11="/usr/lib/jvm/java-11-adoptopenjdk/bin/java"
alias java17="/usr/lib/jvm/java-17-adoptopenjdk/bin/java"
alias java-version="sudo update-alternatives --config java"

# OpenVPN

function vpn() {

  [[ $# != 1 ]] && echo "No command specified" && return 1

  case $1 in
    on)
      local passwd_path="/tmp/ovpn-pwd"
      echo -n "Enter Private Key Password: " ; read -rs passwd ; echo "$passwd" > $passwd_path
      pgrep openvpn > /dev/null || sudo openvpn --config /.vpn/private.ovpn --askpass $passwd_path > /dev/null 2>&1 &| 
      sleep 1
      rm -f $passwd_path ;;
    off) pgrep openvpn > /dev/null 2>&1 && sudo killall openvpn > /dev/null || return 0 ;;
    status) pgrep openvpn > /dev/null 2>&1 && echo "VPN running" || echo "VPN not running" ;;
    *) echo "Command not known" ; return 1 ;;
  esac
}

