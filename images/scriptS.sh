apt-get update
apt-upgrade
mkdir snort_source
cd snort_source
apt-get -y bison flex
wget https://www.snort.org/downloads/snort/snort-2.9.17.tar.gz
wget https://www.snort.org/downloads/snort/daq-2.0.7.tar.gz
tar xvzf daq-2.0.7.tar.gz
tar xvzf snort-2.9.17.tar.gz
cd daq-2.0.7
./configure
apt-get installlibpcap-dev
apt-get install automake
autoreconf -f -i
apt-get install libtool libtool-bin
make
make install
cd ..
cd snort-2.9.17
./configure
apt-get install libpcre++-dev
apt-get install libdumbnet-dev
apt-get install libssl-dev
apt-get install libluajit-5.1-dev
make
make install
ldconfig
snort -v
cd ..
mkdir /etc/snort
mkdir /etc/snort/rules
mkdir /var/log/snort
touch /etc/snort/snort.conf
touch /etc/snort/rules/nmap.rules
gedit /etc/snort/snort.conf
