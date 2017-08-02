sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tshark

#sudo mergecap -w merge.pcap -F pcap tcpdump.pcap*
#sudo ivstools --convert merge.pcap merge.ivs
#wpaclean merge.handshakes2 merge.pcap
# OR...
#tshark -r merge.pcap -2R "eapol || wlan.fc.type_subtype == 0x08" -w merge.handshakes
