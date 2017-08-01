#!/bin/bash
#file="$1"

for f in "$@"
do
../pcapToElasticBulkJson.sh $f > d.json;
curl -s -XPOST http://bos-01:9200/_bulk --data-binary @d.json;
clear;
rm -f $f;
done;
