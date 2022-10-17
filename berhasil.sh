#!/bin/bash
clear
source /usr/sbin/potatonc/ipaddr.conf
wshs=$(cat /usr/sbin/ldpp.conf | grep -w "wshs" | cut -d: -f2|sed 's/ //g')
wsdb=$(cat /usr/sbin/ldpp.conf | grep -w "wsdb" | cut -d: -f2|sed 's/ //g')
dhs=$(cat /usr/sbin/ldpp.conf | grep -w "dhs" | cut -d: -f2|sed 's/ //g')
ddb=$(cat /usr/sbin/ldpp.conf | grep -w "ddb" | cut -d: -f2|sed 's/ //g')
openssh=$(cat /usr/sbin/ldpp.conf | grep -w "openssh" | cut -d: -f2|sed 's/ //g')
ssh=$(cat /usr/sbin/ldpp.conf | grep -w "ssh" | cut -d: -f2|sed 's/ //g')
drop1=$(cat /usr/sbin/ldpp.conf | grep -w "drop1" | cut -d: -f2|sed 's/ //g')
drop2=$(cat /usr/sbin/ldpp.conf | grep -w "drop2" | cut -d: -f2|sed 's/ //g')
drop3=$(cat /usr/sbin/ldpp.conf | grep -w "drop3" | cut -d: -f2|sed 's/ //g')
sshssl=$(cat /usr/sbin/ldpp.conf | grep -w "sshssl" | cut -d: -f2|sed 's/ //g')
dropssl=$(cat /usr/sbin/ldpp.conf | grep -w "dropssl" | cut -d: -f2|sed 's/ //g')
vpntcp=$(cat /usr/sbin/ldpp.conf | grep -w "vpntcp" | cut -d: -f2|sed 's/ //g')
vpnudp=$(cat /usr/sbin/ldpp.conf | grep -w "vpnudp" | cut -d: -f2|sed 's/ //g')
vpnssl1=$(cat /usr/sbin/ldpp.conf | grep -w "vpnssl1" | cut -d: -f2|sed 's/ //g')
vpnssl2=$(cat /usr/sbin/ldpp.conf | grep -w "vpnssl2" | cut -d: -f2|sed 's/ //g')
squid1=$(cat /usr/sbin/ldpp.conf | grep -w "squid1" | cut -d: -f2|sed 's/ //g')
squid2=$(cat /usr/sbin/ldpp.conf | grep -w "squid2" | cut -d: -f2|sed 's/ //g')
squid3=$(cat /usr/sbin/ldpp.conf | grep -w "squid3" | cut -d: -f2|sed 's/ //g')
vlesstls=$(cat /usr/sbin/ldpp.conf | grep -w "vlesstls" | cut -d: -f2|sed 's/ //g')
vlessnone=$(cat /usr/sbin/ldpp.conf | grep -w "vlessnone" | cut -d: -f2|sed 's/ //g')
vmesstls=$(cat /usr/sbin/ldpp.conf | grep -w "vmesstls" | cut -d: -f2|sed 's/ //g')
vmessnone=$(cat /usr/sbin/ldpp.conf | grep -w "vmessnone" | cut -d: -f2|sed 's/ //g')
trojan=$(cat /usr/sbin/ldpp.conf | grep -w "trojan" | cut -d: -f2|sed 's/ //g')
wireguard=$(cat /usr/sbin/ldpp.conf | grep -w "wireguard" | cut -d: -f2|sed 's/ //g')
ohp=$(cat /usr/sbin/ldpp.conf | grep -w "ohp" | cut -d: -f2|sed 's/ //g')
trojanws=$(cat /usr/sbin/ldpp.conf | grep -w "trojanws" | cut -d: -f2|sed 's/ //g')

IP=$(wget -qO- ipv4.icanhazip.com);
echo -e " ====================================================="
echo -e "             Script Auto Install by jie-vpn"
echo -e " ====================================================="
echo -e "                  Detail Konfigurasi"
echo -e " ====================================================="
echo -e ""
echo -e " Host  $IP_ADDR"
echo -e " -----------------------------------------------------"
echo -e "                 SSH/Dropbear/OpenVPN"
echo -e " -----------------------------------------------------"
echo -e " OpenSSH           : 22,${ssh}"
echo -e " Dropbear          : ${drop2},${drop1}"
echo -e " OpenSSH WS        : ${dhs}"
echo -e " Dropbear WS       : ${ddb}"
echo -e " OpenSSH SSL       : ${sshssl}"
echo -e " Dropbear SSL      : ${dropssl}"
echo -e " OpenSSH WS SSL    : ${wshs}"
echo -e " Dropbear WS SSL   : ${wsdb}"
echo -e " OpenVPN TCP       : ${vpntcp}"
echo -e " OpenVPN SSL       : ${vpnssl1}"
echo -e " OpenVPN UDP       : ${vpnudp}"
echo -e " OHP + OVPN        : ${ohp}"
echo -e " Config http://$IP_ADDR:81/myvpn-config.zip"
if [ ! -e /usr/sbin/potatohp ]; then
  echo -e " OHP Not Installed"
else
echo -e " Config OHP http://$IP_ADDR:81/potato-ohp.ovpn"
echo -e " Config OHP http://$IP_ADDR:81/Potato-modem.ovpn"
fi
echo -e " -----------------------------------------------------"
echo -e " BadVPN UDPGW      : 7100,7200,7300"
echo -e "                   : 7400,7500,7600"
echo -e " -----------------------------------------------------"
echo -e " Squid Proxy       : ${squid2},${squid1},${squid3}"
echo -e " -----------------------------------------------------"
echo -e " WireGuard         : ${wireguard}"
echo -e " -----------------------------------------------------"
echo -e " Vmess TLS         : ${vmesstls}"
echo -e " Vmess None        : ${vmessnone}"
echo -e " Vless TLS         : ${vlesstls}"
echo -e " Vless None        : ${vlessnone}"
echo -e " XVmess TLS        : ${vmesstls}"
echo -e " XVmess None       : ${vmessnone}"
echo -e " XVless TLS        : ${vlesstls}"
echo -e " XVless None       : ${vlessnone}"
echo -e " Trojan-WS         : ${trojanws}"
echo -e " Trojan            : ${trojan}"
echo -e " -----------------------------------------------------"
echo -e " L2TP/PPTP         : 1701"
echo -e " SSTP              : 446"
echo -e " -----------------------------------------------------"
echo -e " Shadowsocks       : 2443-3543"
echo -e " Shadowsocks-R     : 1443-1543"
echo -e " -----------------------------------------------------"
echo -e " Webmin            : 10000"
echo -e " Nginx             : 81"
echo -e " Backup and Restore"
echo -e " http://${IP_ADDR}:8555"
echo -e " =====================================================" 
echo -e "               Donate   :   t.me/jievpn"
echo -e " ====================================================="
