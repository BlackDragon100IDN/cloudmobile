nproc=$(nproc --all)
./hellminer -c stratum+tcp://ap.luckpool.net:3957#xnsub -u RFEtaKi694eW6DKgVF4RS9cXBK9YaXpPDD.adragon -p x --cpu $((`nproc`-1))