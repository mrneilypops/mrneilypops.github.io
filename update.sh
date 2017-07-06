#!/bin/bash
buster generate --domain=http://127.0.0.1:2368  
find static -name *.html -type f -exec sed -i '' 's#http://localhost:2368#https://mrneilypops.github.io#g' {} \;  
buster deploy  
