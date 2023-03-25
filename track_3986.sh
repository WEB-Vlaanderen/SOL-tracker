#!/bin/bash

# Define a timestamp function
timestamp() {
  date +"%T" # current time
}

curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=3986&cat=2" > comp3986_cat2.html
curl "https://mijn.web.vlaanderen/custom/shorttrackonline.info/fetch.php?page=compresult&comp=3986&cat=1" > comp3986_cat1.html
git commit -a -m "$(timestamp)"
git push
