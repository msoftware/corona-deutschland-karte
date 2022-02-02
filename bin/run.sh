#!/bin/bash
set -x
set -e

cd /var/www/corona.jentsch.io/corona-deutschland-karte/bin/

echo '# cleanup data'
rm -f ../data/*.json.bz2
rm -f ../docs/data.js

echo '# download data'
node 1_fetch_data.js

echo '# prepare data'
node 2_prepare_data.js

echo '# build'
node 3_build.js

echo '# deploy'
sh 4_deploy.sh

