alias sudo='sudo '
alias lla="ll -a"
alias shutdown="shutdown now"
alias reboot="shutdown -r"
alias cdlh="cd /var/www/html"
alias cdd2="cd /media/yash/DATA2"
alias cdd="cd /media/yash/DATA"
alias logoff="gnome-session-quit"
alias rmr="rm -r"
alias rmf="rm -f"
alias rmrf="rm -rf"
alias ae="tail /var/log/apache2/error.log"
alias aa="tail /var/log/apache2/access.log"
alias bc="bc -q"
alias q="exit"
alias updg="sudo apt-get update && sudo apt-get upgrade"
alias c="clear"
alias chrome="nohup google-chrome-stable > /dev/null"
alias hibernate="sudo pm-hibernate"
alias postman="~/Downloads/Postman/Postman &"
function nh() {
	[ -z "$1" ] && 1="."
	[ ! -d "$1" ] && 1="."
	nautilus "$1" &
}
function gdit() {
	if [ -z "$1" ]
	then 
		gedit &
	else
		gedit "$1" &
	fi
}
function pdf() {
	if [ -z "$1" ] || [ ! -f "$1" ]
	then
		evince &
	else
		evince "$1" &
	fi
}
function mkdcd() {
	mkdir "$1" && cd "$1"
}
function other() {
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	export GOPATH="$HOME/go"

}
fortune
other
PATH="$PATH:/home/yash/.local/bin/:/snap/bin/"
PATH="$PATH:/opt/firefox/"
PATH="$PATH:/home/yash/Documents/installs/flutter/bin"






#cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
#[Desktop Entry]
#Encoding=UTF-8
#Name=Firefox Developer Edition
#Exec=/opt/firefox/firefox
#Icon=/opt/firefox/browser/chrome/icons/default/default128.png
#Terminal=false
#Type=Application
#Categories=Network;WebBrowser;Favorite;
#MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
#EOL
