#!/bin/bash
# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_GOLD=$ESC_SEQ"30;33m"
COL_RED=$ESC_SEQ"31;02m"

echo -e "$COL_RED
                   ____     ____                        _   
                  / ___|___|  _ \ _ __ ___   _ __   ___| |_ 
                 | |  _|_  / |_) | '__/ _ \ | '_ \ / _ \ __|
                 | |_| |/ /|  __/| | | (_) || | | |  __/ |_ 
                  \____/___|_|   |_|  \___(_)_| |_|\___|\__|
                                             $COL_GOLD  
                 ╔/════════════════╔๑ஜ۩۞۩ஜ๑╗════════════════\╗
                 ║                                          ║
                 ║        ♦ Script created by Gizi ♦        ║
                 ║          ♦ Web www.GzPro.net ♦           ║
                 ║           ♦ Skype gzpro.net ♦            ║
                 ║                                          ║
                 ╚\════════════════╚๑ஜ۩۞۩ஜ๑╝════════════════/╝
				 $COL_RESET
				 "
 
if [[ $1 == 'stop' ]]; then 
        echo stop >> tmp.txt
		date >> tmp.txt
        screen -S VPN_Guard_Bot -X quit
		sleep 1
		echo -e "VPN_Guard_Bot: $COL_GREEN STOPED! $COL_RESET"
elif [[ $1 == 'start' ]]; then
	sleep 1
	echo start >> tmp.txt
	date >> tmp.txt
        screen -dmS VPN_Guard_Bot php vpnguard.php
		ps ax | grep -v grep | grep -v -i SCREEN | grep links >> tmp.txt
		echo -e "VPN_Guard_Bot: $COL_GREEN STARTED! $COL_RESET"
 fi


