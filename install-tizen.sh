#!/usr/bin/env bash

# download java
mkdir ~/java-temp
cd ~/java-temp
curl -L -o "jdk.tar.gz" http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz

# extract java
tar xvf jdk.tar.gz -C ../

# add java to the path
PATH=$PATH:~/jdk-10/bin

# download tizen
mkdir ~/tizen-temp
cd ~/tizen-temp
curl -L -o "tizen-install.bin" http://download.tizen.org/sdk/Installer/tizen-studio_2.3/web-cli_Tizen_Studio_2.3_ubuntu-64.bin

# install tizen
chmod +x tizen-install.bin
./tizen-install.bin --accept-license ~/tizen-studio

# install packages
cd ~/tizen-studio
./package-manager/package-manager-cli.bin install --accept-license MOBILE-4.0
