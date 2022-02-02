#!/bin/bash
set -e

cd /var/www/corona.jentsch.io/corona-deutschland-karte/docs

cp index.html ../../https/
cp *.png ../../https/
cp data.js ../../https/
cp lib/jquery.min.js ../../https/lib/
cp script/main.* ../../https/script/

