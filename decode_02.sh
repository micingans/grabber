blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
clear
key="tq1"
while [ "$goblok" != "$key" ]
do
read -p "Password > " goblok;
done
clear
banner(){
echo -e $red"
- NOTE : DILARANG KERAS\nMENJUAL ATAU MEMBAGIKAN\nTOOLS INI KEPADA SESEORANG\nTANPA SEIJIN PEMBUAT\nTOOLS INI!!!
"
echo -e $lightgreen"
- Priv8 Domain Grabber
- Github : github.com/ZeusFtrOfc
- Youtube : AVN317
- Version : 1.0
- Output : result1.txt
- Blogger : https://japanesecs.blogspot.com
- Program : Bash
- Team : Rajawali Security Team
- Gmail : japanesecsxz@gmail.com
- Whatsapp : 6282125563461
- Domain Grabber By ZeusXz
"
read -p "[ ! ] Masukan Angka (1-99)  => " domain1;
read -p "[ ! ]  Masukan Page => " hal1;
read -p "[ ? ] Sampai Page => " hal2;
read -p "[ ? ] Masukan Thereds /default10 => " ther
}
banner
for((i=$hal1;i<=$hal2;i++))
do
curr=$(curl -s "https://com.all-url.info/$domain1/$i/" | grep -oP '<a href=https://com.all-url.info/com/(.*?)>(.*?)</a>' | cut -d "<" -f2 | cut -d ">" -f2)
c=$(echo "$curr" | wc -l)
b=$(cat result1.txt | wc -l 2>/dev/null)
if [[ $curr =~ '.com' ]]; then
echo "$curr" >> result1.txt
echo -e "${lightgreen}[ ! ] Grabbed => $c || In Pages => $i SUCCESS"
else
echo -e "\033[41;1m -- \033[0m ${red} [-]Error"
fi
done
