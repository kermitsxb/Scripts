#!/bin/bash

# Ajout des PPA
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/sublime-text-3
add-apt-repository -y ppa:hertzog/nautilus-dropbox
add-apt-repository -y ppa:eugenesan/ppa
#add-apt-repository -y ppa:piotr-zagawa/ma2 #myAgenda

sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

#Update
apt-get update

#Installations
apt-get install -y build-essential
apt-get install -y vim
apt-get install -y gparted
apt-get install -y unetbootin
apt-get install -y gedit
apt-get install -y filezilla
apt-get install -y playonlinux
apt-get install -y tmux
apt-get install -y htop

apt-get install -y oracle-java8-installer
apt-get install -y sublime-text
apt-get install -y nautilus-dropbox
apt-get install -y smartgit
#apt-get install -y myagenda
apt-get install -y htop
apt-get install -y google-chrome-stable

#apt-get install -y netbeans

apt-get install -y apache2 php5 mysql-server libapache2-mod-php5 php5-mysql phpmyadmin

#Install MYSQLDumper
wget 'http://downloads.sourceforge.net/project/mysqldumper/MySQLDumper/MySQLDumper1.24.4.zip' && 

#Install ShellChecker
apt-get install -y shellchecker

#Install mysql tuner
wget http://mysqltuner.pl/ -O mysqltuner.pl
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv
chmod +x mysqltuner.pl

#Cloner mon repo script
