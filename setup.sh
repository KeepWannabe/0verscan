#!/usr/bin/env bash
##############################################################
# BITCOIN       : 37RkVq4vpVTqNvWch4wxEjSSKVfd9TF3e1
# PAYPAL        : https://www.paypal.me/abdiprawiran
# PERFECT MONEY : U15461128
##############################################################
##                    COLORING YOUR SHELL                   ##
##############################################################
white="\033[1;37m"                                          ##
grey="\033[0;37m"                                           ##
purple="\033[0;35m"                                         ##
red="\033[1;31m"                                            ##
green="\033[1;32m"                                          ##
yellow="\033[1;33m"                                         ##
purple="\033[0;35m"                                         ##
cyan="\033[0;36m"                                           ##
cafe="\033[0;33m"                                           ##
fiuscha="\033[0;35m"                                        ##
blue="\033[1;34m"                                           ##
nc="\e[0m"                                                  ##
##############################################################
banner(){
printf " ${white}     

            #########################################################################
            ##                          0verscan Installer                         ##
            #########################################################################
            ##                            • DISCLAIMER •                           ##
            ##                                                                     ##
            ##     we are not responsible for what is done with these Tools,       ##
            ##     made for education. all crimes are borne by this user tool.     ##
            ##     Made in the language of BASH / Shell Scripting, its function    ##
            ##     makes it easy to enumerating our subdomain and scan them for    ##
            ##     know its have a potential for TakeOver or not.                  ##
            ##                                                                     ##
            #########################################################################
\n"
}
gover=$(go version | grep "go version go")
checking_golang() {
    if [[ $gover != "go version go" ]]; then
    install_ss
    else
    printf "[$red x$white ] Can't Install Go-Lang, Exiting...."
    sleep 2
    exit
    fi
}
check_uid() {
if [[ $(id -u) == 0 ]]; then
install_1
else
printf "            ${white}[•] ${red}This script must be run with sudo ${white}[•]\n"
exit
fi
}
install_1() {
sleep 2
printf "${cyan}
#######################################################
##               ${white}  INSTALLING GO-LANG                ${cyan}##
#######################################################\n"${white}
sudo apt-get update
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local
echo "export GOPATH=$HOME/work" >> ~/.profile
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
source ~/.profile
rm go1.12.6.linux-amd64.tar.gz
echo -e "            [$green ✔$white ] Installing Go-Lang............................................"
wait
}
install_ss(){

printf "${cyan}
#######################################################
##              ${white}  INSTALLING SUBFINDER               ${cyan}##
#######################################################${white} \n"
install_subfinder=$(go get github.com/subfinder/subfinder)
wait

printf "${cyan}
#######################################################
##                 ${white}INSTALLING SUBOVER               ${cyan} ##
#######################################################${white}\n"
install_subover=$(go get github.com/KeepWannabe/SubOver)
wait

printf "${cyan}
#######################################################
##                 ${white}FINISHING 0VERSCAN               ${cyan} ##
#######################################################${white}\n"
mkdir $HOME/.0verscan && cp /usr/local/go/bin/subfinder /usr/bin/subfinder && cp /usr/local/go/bin/providers.json $HOME/.0verscan/&& cp /usr/local/go/bin/SubOver /usr/bin/subover && mkdir $HOME/.0verscan && cp 0verscan /usr/bin/0verscan && chmod +x /usr/bin/0verscan
wait

sleep 2
echo -e "[$green ✔$white ] SubFinder$green DONE$white";
sleep 2
echo -e "[$green ✔$white ] SubOver$green DONE$white";
sleep 2
echo -e "[$green ✔$white ] 0verscan$green DONE$white";
}
clear
clear
printf "\e[8;25;99t"
banner
check_uid
checking_golang
