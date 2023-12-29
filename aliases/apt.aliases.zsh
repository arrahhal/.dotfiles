alias apts='apt-cache search'
alias aptsh='apt-cache show'
alias apti='sudo apt-get install -V'
alias aptupd='sudo apt-get update'
alias aptupg='sudo apt-get dist-upgrade -V && sudo apt-get autoremove'
alias aptupgd='sudo apt-get update && sudo apt-get dist-upgrade -V && sudo apt-get autoremove'
alias aptr='sudo apt-get remove'
alias aptpurge='sudo apt-get remove --purge'

alias chkup='/usr/lib/update-notifier/apt-check -p --human-readable'
alias chkboot='cat /var/run/reboot-required'

alias pkgfiles='dpkg --listfiles'
