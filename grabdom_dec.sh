#!/bin/bash

blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
hijau='\e[1;32m'
putih='\e[1;37m'
red='\e[1;31m'
kuning='\e[1;33m'
clear
key="xxx"
while [ "$pw" != "$key" ]
do
read -p "Password > " pw;
done
clear
banner(){
echo -e $red"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo -e $putih"-Priv8 Tools Domain Grabber All Domains\n-Domain E.g : com not .com\n-Max Number: 100\n-Output : result.txt"
echo -e $red"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo -e $putih
read -p "[#] Input Domains ~> " g;
read -p "[#] Input Number ~> " tt1;
read -p "[#] Input To Number ~> " tt;
read -p "[#] Input Page ~> " hal1;
read -p "[#] Input To Page ~> " hal2;
read -p "[#] Filter Auto Wp Only? on/off ~> " hava;
read -p "[#] Filter Anti Duplicate Line? on/off ~> " gava;
read -p "[#] Filter Anti Same IP? on/off ~> " gavsg;
read -p "[#] Input Thereds /default10 ~> " ther
echo -e "${red}%%%%%%%%%% ${hijau}Please Waiting.........${red}%%%%%%%%%%"
}
banner
for((i=$tt1;i<=$tt;i++)); do
for((j=$hal1;j<=$hal2;j++)); do
curr=$(curl -s "https://$g.all-url.info/$i/$j/" | grep -oP "<a href=https://$g.all-url.info/$g/(.*?)>(.*?)</a>" | cut -d "<" -f2 | cut -d ">" -f2)
c=$(echo "$curr" | wc -l)
b=$(cat result.txt | wc -l 2>/dev/null)
if [[ $curr =~ "$g" ]]; then
echo "$curr" >> result.txt
echo -e "${putih}[#]Grabbed ${kuning}~> ${hijau}$c ${putih}Site ${kuning}| ${putih}Pages ${kuning}~> ${hijau}$j ${kuning}| ${putih}Number ${kuning}~> ${hijau}$i ✔️"
else
echo -e "\033[41;1m -- \033[0m ${red} [-]Error Limit Page!"
fi
done
done
echo -e $hijau"Done........✔️"
