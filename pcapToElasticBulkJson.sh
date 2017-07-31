#!/bin/bash
# prepares a .pcap file for Elasticsearch bulk ingest
# Usage ./pcapToElasticBulkJson.sh tcpdump.pcap > tcpdump.pcap.elasticbulk.json

file="$1"
sudo tshark -T ek -e "frame.time" -e "wlan.bssid" -e "wlan_mgt.ssid" -e "wlan_mgt.ds.current_channel" -e "wlan.addr" -e "wlan.ta" -e "wlan.sa" -e "wlan.ra" -e "wlan.da" -e "wlan_mgt.country_info.code" -e "ip.src" -e "ip.dst" -e "tcp.srcport" -e "tcp.dstport" -e "wlan_radio.channel" -e "wlan_radio.frequency" -e "wlan_radio.signal_dbm" -r $file | cat