#!/bin/bash
sudo apt update
sudo apt -y install software-properties-common
#configura i repository
sudo apt-add-repository -n ppa:mutlaqja/ppa -y
sudo apt-add-repository -n ppa:pch/phd2 -y
sudo apt-add-repository -n ppa:pch/ppa-skychart -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B8B57C1AA716FC2
sudo sh -c "echo deb http://www.ap-i.net/apt unstable main > /etc/apt/sources.list.d/skychart.list" 
sudo apt-add-repository -n ppa:mutlaqja/ppa -y

sudo apt update

#installa
sudo apt -y install indi-full gsc kstars-bleeding phd2 python3-pip ccdciel indistarter eqmodgui libpasraw stellarium

#installa indi web manager
pip3 install indiweb
sudo apt -y install indiwebmanagerapp
