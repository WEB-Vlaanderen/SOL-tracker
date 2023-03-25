#!/bin/bash

# Define a timestamp function
timestamp() {
  date +%F_%T # current time
}

curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=3986&cat=2" > comp3986_cat2.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=3986&cat=1" > comp3986_cat1.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=4006&cat=7" > comp4006_cat7.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=4006&cat=8" > comp4006_cat8.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=4006&cat=10" > comp4006_cat10.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=4006&cat=11" > comp4006_cat11.html



git commit -a -m "$(timestamp)"
git push origin main
