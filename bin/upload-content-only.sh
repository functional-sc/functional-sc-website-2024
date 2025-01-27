#!/bin/sh
scp    fpsc-website-published/index.html fpsc:~/fpsc-website-published/
scp -r fpsc-website-published/assets/*   fpsc:~/fpsc-website-published/assets/
scp    ./html-custom/custom.css          fpsc:~/fpsc-website-published/static/css/

# create nginx rules
# duplicaed in the oher upload script
cp config-webhead/nginx-site temp-nginx-site
./bin/make-nginx-rewrites.sh ./fpsc-website-graph/pages/ >> temp-nginx-site
echo "}" >> temp-nginx-site
scp temp-nginx-site root@fpsc:/etc/nginx/sites-enabled/functional.sc
ssh root@fpsc 'systemctl restart nginx'
rm temp-nginx-site
