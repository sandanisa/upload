mrh="\033[31m"
ijo="\033[32m"
net="\033[0m"
clear
echo -e ${ijo} "=========================================="
echo ''
echo -e "	RESWARA ANONFILES UPLOADER"
echo -e ${mrh} "   	         By Lkey7"
echo -e ''
echo -e ${ijo} "=========================================="
echo -e ${net} ''
read -p "Input file ame: " fl;
c=$(curl -s -F "file=@$fl" https://api.anonfiles.com/upload | grep -Po '{"full":"(.*?)"' | cut -d '"' -f 4)
echo -e "${ijo}Your Link${nat} =>${mrh} $c"
