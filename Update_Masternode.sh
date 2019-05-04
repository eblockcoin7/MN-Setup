#/bin/bash

echo "We will update your CryptoFlow Masternode right now" 
sudo apt-get -y install unzip
eblockcoin-cli stop
rm -rf /usr/local/bin/eblockcoin*
mkdir EBCRUpdated_1.1.0.0
cd EBCRUpdated_1.1.0.0
wget https://github.com/eblockcoin7/eBlockCoin/releases/download/v1.1.0.0/eBlockCoin-1.1.0.0-daemon_ubuntu_16.04.tar.gz
tar xzvf eBlockCoin-1.1.0.0-daemon_ubuntu_16.04.tar.gz
mv eblockcoind /usr/local/bin/eblockcoind
mv eblockcoin-cli /usr/local/bin/eblockcoin-cli
chmod +x /usr/local/bin/eblockcoin*
rm -rf ~/.eblockcoin/blocks
rm -rf ~/.eblockcoin/chainstate
rm -rf ~/.eblockcoin/peers.dat
cd ~/.eblockcoin/
wget https://github.com/eblockcoin7/eBlockCoin/releases/download/v1.1.0.0/bootstrap.zip
unzip bootstrap.zip
echo "addnode=8.9.15.133 add" >> eblockcoin.conf
echo "addnode=95.179.144.84 add" >> eblockcoin.conf
echo "addnode=45.77.129.105 add" >> eblockcoin.conf
echo "addnode=80.240.31.85 add" >> eblockcoin.conf
echo "addnode=45.32.180.84 add" >> eblockcoin.conf
echo "addnode=45.77.22.43 add" >> eblockcoin.conf
echo "addnode=149.28.137.248 add" >> eblockcoin.conf
echo "addnode=107.191.57.210 add" >> eblockcoin.conf
cd ..
cd EBCRUpdated_1.1.0.0
eblockcoind -daemon
sleep 10
eblockcoin-cli addnode 8.9.15.133 onetry
eblockcoin-cli addnode 95.179.144.84 onetry
eblockcoin-cli addnode 45.77.129.105 onetry
eblockcoin-cli addnode 80.240.31.85 onetry
eblockcoin-cli addnode 45.32.180.84 onetry
eblockcoin-cli addnode 45.77.22.43 onetry
eblockcoin-cli addnode 149.28.137.248 onetry
eblockcoin-cli addnode 107.191.57.210 onetry
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"

