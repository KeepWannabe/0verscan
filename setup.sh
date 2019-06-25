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
install_1() {
if [[ $(whoami) != "root" ]]
then
printf "            ${white}[•] ${red}This script must be run as root / sudo ${white}[•]\n"
exit
fi
sleep 2
printf "${cyan}
#######################################################
##               ${white}  INSTALLING GO-LANG                ${cyan}##
#######################################################\n"${white}
sudo apt-get update
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
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
mkdir $HOME/.0verscan && cp /snap/bin/amass /usr/bin/amass && cp $HOME/go/bin/subfinder /usr/bin/subfinder && cp $HOME/go/bin/providers.json $HOME/.0verscan/&& cp $HOME/go/bin/SubOver /usr/bin/subover && mkdir $HOME/.0verscan && cp 0verscan /usr/bin/0verscan && chmod +x /usr/bin/0verscan
wait

sleep 2
echo -e "            [$green ✔$white ] SubFinder";
sleep 2
echo -e "            [$green ✔$white ] SubOver";
sleep 2
echo -e "            [$green ✔$white ] 0verscan";
}
clear
clear
printf "\e[8;25;99t"
banner
install_1
checking_golang