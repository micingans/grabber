blue='\e[0;34' cyan='\e[0;36m' green='\e[0;34m' yesgreen='\033[92m' lightgreen='\e[1;32m' white='\e[1;37m' red='\e[1;31m' yellow='\e[1;33m' grab(){ COUNTER=$((COUNTER+1)) domains=$(curl -s "https://site-stats.org/domains/.${domain}/${page}/" -L | grep -oP "<strong>(.*?).${domain}" | sed "1d" | cut -d ">" -f2) if [[ $domains =~ '.' ]]; then echo "$domains" >> result-$y-$m-$d.$domain.txt regdomains=$(echo "$domains" | wc -l) domains=$(cat result-$y-$m-$d.$domain.txt | wc -l) echo -e "=> ${lightgreen}[page :${lightgreen}${COUNTER}]-[from ${white}$y-$m-$d${lightgreen}]>${blue}$regdomains >>[${white}$domains${lightgreen} - domains]" else echo -e "${red}>> Failed" fi } banner(){ echo -e $red"_________________|${lightgreen}Priv8 grabber version 5.0$red|__________________" echo -e $yellow"  ${yellow}Version  :${lightgreen}5.0    " echo -e $yellow"  ${yellow}MoreTelegram :${lightgreen}@deskcriminalz  " echo -e $red"______________________________________________________________" read -p "=> Domains : " domain; read -p "=> Page : " page; read -p "=> To page : " pages; read -p "=> Year : " y; read -p "=> Month : " m; read -p "=> Date : " d; } banner for page in `seq $page $pages`; do grab $domain $y $m $d done
