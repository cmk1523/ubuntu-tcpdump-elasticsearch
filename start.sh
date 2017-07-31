sudo ifconfig wlx00c0ca830680 down
sudo iwconfig wlx00c0ca830680 mode monitor
sudo ifconfig wlx00c0ca830680 up
# tcpdump: -G rotate file every n-seconds
sudo tcpdump -i wlx00c0ca830680 -C 10 -w tcpdumb.pcap