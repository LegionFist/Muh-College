#!/bin/bash

lagi='y'
while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do

   clear
   echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
   echo "LOKET PEMBELIAN TIKET BUS UNTUK PERJALANAN ";
   echo "                TRANSJAWA"
   echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
   echo "1. BELI TIKET     ";
   echo "2. CEK DURASI PERJALANAN";
   echo "3. CEK JARAK TEMPUH";
   echo "4. PRINT TIKET ";
   echo "5. SELESAI DAN KELUAR        ";
   echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
   read -p "Pilihan anda [1-5] :" pil;
   echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";

case $pil in 1)

       clear;
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "               HARGA TIKET ";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "1.  Jakarta - Bandung    Rp.85.000";
       echo "2.  Jakarta - Indramayu  Rp.105.000";
       echo "3.  Jakarta - Cirbon     Rp.130.000";
       echo "4.  Jakarta - Qudus      Rp.155.000";
       echo "5.  Jakarta - Semarang   Rp.190.000";
       echo "6.  Jakarta - Demak      Rp.245.000";
       echo "7.  Jakarta - Mojokerto  Rp.280.000";
       echo "8.  Jakarta - Surabaya   Rp.325.000";
       echo "9.  Jakarta - Jember     Rp.385.000";
       echo "10. Jakarta - Banyuwangi Rp.420.000";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo -n "Masukan nama anda                 :";
       read nama 
       echo -n "Masukan no hp anda                :";
       read hp
       echo -n "Masukan jenis tiket anda (1-10)   :";
       read jenis
       echo -n "Masukan jumlah tiket yang di beli : "
       read jum
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       if [ $jenis -eq 1 ];    then tujuan="Bandung";
       tiket=85000;
       let total=jum*tiket;

       elif [ $jenis -eq 2 ]; then  tujuan="Indramayu";
       tiket=105000;
       let total=jum*tiket; 
       elif [ $jenis -eq 3 ]; then   tujuan="Cirebon";
       tiket=130000;
       let total=jum*tiket;

       elif [ $jenis -eq 4 ]; then   tujuan="Qudus";
       tiket=155000;
       let total=jum*tiket;

       elif [ $jenis -eq 5 ]; then   tujuan="Semarang";
       tiket=190000;
       let total=jum*tiket;

       elif [ $jenis -eq 6 ]; then   tujuan="Demak";
       tiket=245000;
       let total=jum*tiket;

       elif [ $jenis -eq 7 ]; then   tujuan="Mojokerto";
       tiket=280000;
       let total=jum*tiket;

       elif [ $jenis -eq 8 ]; then   tujuan="Surabaya";
       tiket=325000;
       let total=jum*tiket;

       elif [ $jenis -eq 9 ]; then   tujuan="Jember";
       tiket=385000;
       let total=jum*tiket;

       elif [ $jenis -eq 10 ]; then   tujuan="Banyuwangi";
       tiket=420000;
       let total=jum*tiket;

       else
       echo "Maaf,Pilihan tidak tersedia"
       exit 1
       fi
;;
2) 
clear;
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "           CEK DURASI PERJALANAN ";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "1.  Jakarta - Bandung    ";
       echo "2.  Jakarta - Indramayu  ";
       echo "3.  Jakarta - Cirbon     ";
       echo "4.  Jakarta - Qudus      ";
       echo "5.  Jakarta - Semarang   ";
       echo "6.  Jakarta - Demak      ";
       echo "7.  Jakarta - Mojokerto  ";
       echo "8.  Jakarta - Surabaya   ";
       echo "9.  Jakarta - Jember     ";
       echo "10. Jakarta - Banyuwangi ";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       
       echo -n "Masukan jenis tiket anda (1-10)   :";
       read jenis
       
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       if [ $jenis -eq 1 ];    then 
       echo "Perjalanan ditempuh dalam waktu 2 jam 27 menit";

       elif [ $jenis -eq 2 ]; then  
       echo "Perjalanan ditempuh dalam waktu 3 jam 30 menit";
 
       elif [ $jenis -eq 3 ]; then   
       echo "Perjalanan ditempuh dalam waktu 3 jam 10 menit";

       elif [ $jenis -eq 4 ]; then   
       echo "Perjalanan ditempuh dalam waktu 6 jam 55 menit";

       elif [ $jenis -eq 5 ]; then   
       echo "Perjalanan ditempuh dalam waktu 5 jam 48 menit";

       elif [ $jenis -eq 6 ]; then   
       echo "Perjalanan ditempuh dalam waktu 6 jam 23 menit";

       elif [ $jenis -eq 7 ]; then   
       echo "Perjalanan ditempuh dalam waktu 8 jam 53 menit";

       elif [ $jenis -eq 8 ]; then   
       echo "Perjalanan ditempuh dalam waktu 9 jam 23 menit";

       elif [ $jenis -eq 9 ]; then   
       echo "Perjalanan ditempuh dalam waktu 12 jam 28 menit";

       elif [ $jenis -eq 10 ]; then   
       echo "Perjalanan ditempuh dalam waktu 14 jam 41 menit";

       else
       echo "Maaf,Pilihan tidak tersedia"
       exit 1
       fi
;;
3)
clear;
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "        CEK Jarak Tempuh PERJALANAN ";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       echo "1.  Jakarta - Bandung    ";
       echo "2.  Jakarta - Indramayu  ";
       echo "3.  Jakarta - Cirbon     ";
       echo "4.  Jakarta - Qudus      ";
       echo "5.  Jakarta - Semarang   ";
       echo "6.  Jakarta - Demak      ";
       echo "7.  Jakarta - Mojokerto  ";
       echo "8.  Jakarta - Surabaya   ";
       echo "9.  Jakarta - Jember     ";
       echo "10. Jakarta - Banyuwangi ";
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       
       echo -n "Masukan jenis tiket anda (1-10)   :";
       read jenis
       
       echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_";
       if [ $jenis -eq 1 ];    then 
       echo "Perjalanan yang ditempuh adalah 150 KM";

       elif [ $jenis -eq 2 ]; then  
       echo "Perjalanan yang ditempuh adalah 223 KM";
 
       elif [ $jenis -eq 3 ]; then   
       echo "Perjalanan yang ditempuh adalah 217 KM";

       elif [ $jenis -eq 4 ]; then   
       echo "Perjalanan yang ditempuh adalah 497 KM";

       elif [ $jenis -eq 5 ]; then   
       echo "Perjalanan yang ditempuh adalah 441 KM";

       elif [ $jenis -eq 6 ]; then   
       echo "Perjalanan yang ditempuh adalah 470 KM";

       elif [ $jenis -eq 7 ]; then   
       echo "Perjalanan yang ditempuh adalah 737 KM";

       elif [ $jenis -eq 8 ]; then   
       echo "Perjalanan yang ditempuh adalah 781 KM";

       elif [ $jenis -eq 9 ]; then   
       echo "Perjalanan yang ditempuh adalah 953 KM";

       elif [ $jenis -eq 10 ]; then   
       echo "Perjalanan yang ditempuh adalah 1061 KM";

       else
       echo "Maaf,Pilihan tidak tersedia"
       exit 1
       fi

;;
4)
       clear;
       echo "|_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_|";
       echo "|      TIKET BUS JET TRANSJAWA 2020         |";
       echo "|_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_|";
       echo "|NAMA        : $nama                         ";
       echo "|NO HP       : $hp                           ";
       echo "|TUJUAN      : $tujuan                       ";
       echo "|JUMLAH      : $jum                          ";
       echo "|_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_|";
       echo "|TOTAL BAYAR : $total                       |";
       echo "|_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_|";
       echo
;;
5)
       exit 0
;;
*)
       echo "Maaf,Pilihan tidak tersedia"
       exit 1
;;
esac
echo -n "Kembali ke menu utama (y/t) :";
read lagi;
done
