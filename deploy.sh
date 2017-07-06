#!/bin/bash
buster generate --domain=http://127.0.0.1:2368
find static/* -name *.html -type f -exec sed -i '' 's#u=http://localhost:2368#u=https://mrneilypops.github.io#g' {} \;
find static/* -name *.html -type f -exec sed -i '' 's#url=http://localhost:2368#url=https://mrneilypops.github.io#g' {} \;
find static/* -name *.html -type f -exec sed -i '' 's#href="http://localhost:2368#href="https://mrneilypops.github.io#g' {} \;
find static/* -name *.html -type f -exec sed -i '' 's#src="http://localhost:2368#src="https://mrneilypops.github.io#g' {} \;
find static/* -name *.html -type f -exec sed -i '' 's#link>http://localhost:2368#link>https://mrneilypops.github.io#g' {} \;
buster deploy
