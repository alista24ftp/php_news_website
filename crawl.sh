#!/usr/bin/env bash
period=7200 #in seconds
outfile="crawl_log.txt"

while true
do
    now=$(date)
    echo -e "Crawl at $now: " >> $outfile
    curl http://xwtt.net/crawl/Crawl/crawlall >> $outfile
    echo -e "\n-----------------------------------------------------------\n" >> $outfile
    sleep $period # sleep for seconds
done
echo -e "-------------------------DONE------------------------------\n" >> $outfile
exit 0