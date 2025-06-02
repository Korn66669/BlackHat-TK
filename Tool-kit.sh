#!/data/data/com.termux/files/usr/bin/bash

# ================================
#    BlackHat-cracker by @Om4mm
# ================================

# الألوان
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
nc='\033[0m'

clear
echo -e "$blue"
cat << "EOF"

        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⠀⠀⣀⡴⠚⠋⠉⠀⠀⠈⠙⠓⠲⣄⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⢀⡾⠋⠀⠀⠀⣠⣶⣶⣦⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀
        ⠀⠀⠀⣠⠟⠀⠀⠀⢀⣼⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠙⣆⠀⠀
        ⠀⠀⣼⠃⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠘⣧⠀
        ⠀⢸⡇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⠀
        ⠀⣿⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⣿⠀
        ⠀⣿⠀⠀⠀⣠⣶⣶⣶⣿⣿⣿⣿⣿⣿⣷⣶⣶⣦⠀⠀⠀⣿⠀
        ⠀⢿⡀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢀⡿⠀
        ⠀⠘⢿⣦⡀⠙⠻⠿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠀⢀⣠⣴⡿⠃⠀
        ⠀⠀⠀⠙⠻⢶⣤⣀⠀⠀⠀⠀⠀⠀⣀⣤⣶⠾⠛⠋⠀⠀⠀⠀
        ⠀⠀⠀⠀⠀⠀⠉⠛⠻⠶⢤⣤⣴⠾⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀

EOF

echo -e "$green"
echo "Welcome to BlackHat-cracker Terminal Toolkit"
echo "Coded by @Om4mm"
echo -e "$nc"
# عرض القائمة
echo -e "$yellow"
echo "Select a tool to install:"
echo -e "$nc"

tools=(
"Red_Hawk" "Lazymux" "Zphisher" "NexPhisher" "Weeman" "Routersploit"
"Sqlmap" "CamHack" "HiddenEye" "Metasploit" "KnockMail" "IP-Tracer"
"D-TECT" "Infoga" "FBI" "EvilURL" "ReconDog" "BlackEye" "Hacktronian"
"A-Rat" "Spammer-Grab" "Trape" "BeeLogger" "ShellPhish" "Wifi-Hacker"
"XAttacker" "Sniper" "Breacher" "Nmap" "Xerxes" "Hammer" "Slowloris"
"Torshammer" "Hydra" "HydraGen" "SocialBox" "Crips" "Hash-Buster"
"Social-Engineering-Tool" "Evil-Droid" "Ghost-Phisher" "BlackNmap"
"CamPhish" "King-Hacking" "Osmedeus" "Nikto" "SpamSms" "Ddos-Attack"
"HackLock" "IP-GeoLocation" "Shellter" "TorGhost" "SiteBroker"
"EvilGrab" "Malicious" "BlackMamba" "HatCloud" "Anon-SMS"
"Termux-Contact-Sniffer" "Instahack" "Instashell" "TikTok-BruteForce"
"FB-Toolkit" "Seeker" "Locator" "LocateMe" "Hackode" "Termux-DDos"
"TrackIp" "CamDumper" "PhoneInfoga" "SigPloit" "NetHunt" "Wifite"
"Aircrack-ng" "WiFi-Pumpkin" "Dnsmap" "MacChanger" "Fluxion"
"Maltrail" "Bettercap" "WifiPhisher" "EvilTwin" "Z3Sec" "Sherlock"
"UserRecon" "GHunt" "Email2phonenumber" "HiddenSploit" "T-Lex"
"OSINT-Framework" "BlackTrack" "Dracnmap" "LockPhish" "Termux-Banner"
"Tinfoleak" "Fsociety" "BlackTool"
)

# طباعة القائمة
for i in "${!tools[@]}"; do
    printf "${blue}[%2d]${nc} %s\n" $((i+1)) "${tools[$i]}"
done

# قراءة اختيار المستخدم
echo
read -p "$(echo -e $green)Enter tool number to install: $(echo -e $nc)" choice

# تثبيت الأداة المختارة
repo="${tools[$((choice-1))]}"
echo -e "$yellow\n[*] Cloning $repo ...$nc"
git clone https://github.com/TermuxHackz/$repo || git clone https://github.com/$repo || echo -e "$red[!] Failed to clone $repo$nc"
