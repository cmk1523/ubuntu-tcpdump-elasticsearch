sudo ifconfig wlx00c0ca830680 down
sudo iwconfig wlx00c0ca830680 mode monitor
sudo ifconfig wlx00c0ca830680 up
sudo iwconfig wlx00c0ca830680 chan 1
# tcpdump: -G rotate file every n-seconds
sudo tcpdump -nni wlx00c0ca830680 -C 25 -w tcpdumb.pcap