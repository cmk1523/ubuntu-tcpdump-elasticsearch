sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tshark

# bulk ingest in to Elasticsearch
#curl -s -XPOST http://bos-01:9200/_bulk --data-binary "@tcpdump.pcap.elastic.bulk.json"