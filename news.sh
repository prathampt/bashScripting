#!/bin/bash

# API_KEY=${INDIA_NEWS_APIKEY}
API_KEY=${NEWS_DATA_API_KEY}

# curl "https://newsapi.org/v2/top-headlines?country=in&apiKey=${API_KEY}" | jq .articles

# curl "https://newsdata.io/api/1/news?apikey=${API_KEY}&country=in&language=en,hi,mr" > temp.txt 
# cat temp.txt | jq .results

output=$(curl "https://newsdata.io/api/1/news?apikey=${API_KEY}&country=in&language=en,hi,mr" | jq .results)

echo "${output}" | jq .[].title