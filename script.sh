#script
#Author: 晓天
#Time：2019-01-0 21:17:00
#!/bin/bash

function install_ss_panel_mod_Uim(){
	wget -N --no-check-certificate https://raw.githubusercontent.com/xtiii/ss-script/master/sspanel-v3-mod_Uim.sh && chmod +x sspanel-v3-mod_Uim.sh && bash sspanel-v3-mod_Uim.sh
}

function install_ss_panel_mod_Uim_Bt(){
    wget -N --no-check-certificate https://raw.githubusercontent.com/xtiii/ss-script/master/sspanel-v3-mod_Uim_Bt.sh && chmod +x sspanel-v3-mod_Uim_Bt.sh && bash sspanel-v3-mod_Uim_Bt.sh
}

function install_new_node(){
    wget -N --no-check-certificate  https://raw.githubusercontent.com/xtiii/ss-script/master/new_node.sh && bash new_node.sh
}

function install_node(){
    wget -N --no-check-certificate  https://raw.githubusercontent.com/xtiii/ss-script/master/node.sh && bash node.sh
}

function install_BBR(){
    wget -N --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
}

function install_RS(){
    wget -N --no-check-certificate https://github.com/91yun/serverspeeder/raw/master/serverspeeder.sh && bash serverspeeder.sh
}

#常规变量
update_time="2019年01月05日21:17:00"
config="/root/shadowsocks/userapiconfig.py"
Ip=`curl http://members.3322.org/dyndns/getip`

#fonts color
Green="\033[32m" 
Red="\033[31m" 
Yellow="\033[33m"
GreenBG="\033[42;37m"
RedBG="\033[41;37m"
Font="\033[0m"

#notification information
Info="${Green}[信息]${Font}"
OK="${Green}[成功]${Font}"
Error="${Red}[错误]${Font}"
Notification="${Yellow}[通知]${Font}"

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
ulimit -c 0
rm -rf script*
clear
echo -e "脚本最后更新时间：${Green} ${update_time} ${Font}"
echo -e "Ip地址：${Ip}"
echo -e "\033[31m#############################################################\033[0m"
echo -e "\033[36m#欢迎使用一键ss-panel-v3-mod_Uim搭建脚本 and 节点添加       #\033[0m"
echo -e "\033[31m#                                                           #\033[0m"
echo -e "\033[35m#请选择你要搭建的脚本：                                     #\033[0m"
echo -e "\033[36m#1.  一键ss-panel-v3-mod_Uim搭建                            #\033[0m"
echo -e "\033[36m#2.  一键ss-panel-v3-mod_Uim搭建[宝塔版]                    #\033[0m"
echo -e "\033[31m#3.  一键添加SS-panel节点[新版]                             #\033[0m"
echo -e "\033[36m#4.  一键添加SS-panel节点                                   #\033[0m"
echo -e "\033[35m#5.  一键  BBR加速  搭建                                    #\033[0m"
echo -e "\033[34m#6.  一键锐速破解版搭建                                     #\033[0m"
echo -e "\033[33m#                                Ps:建议先搭建加速再搭建面板#\033[0m"
echo -e "\033[32m#                                   支持   Centos  7.x  系统#\033[0m"
echo -e "\033[31m#############################################################\033[0m"
echo
read num
if [[ $num == "1" ]]
then
install_ss_panel_mod_Uim
elif [[ $num == "2" ]]
then
install_ss_panel_mod_Uim_Bt
elif [[ $num == "3" ]]
then
install_new_node
elif [[ $num == "4" ]]
then
install_node
elif [[ $num == "5" ]]
then
install_BBR
elif [[ $num == "6" ]]
then
install_RS
else 
echo '输入错误';
exit 0;
fi;