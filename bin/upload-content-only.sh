#!/bin/sh
scp    fpsc-website-published/index.html fpsc:~/fpsc-website-published/
scp -r fpsc-website-published/assets/*   fpsc:~/fpsc-website-published/assets/
scp    ./html-custom/custom.css          fpsc:~/fpsc-website-published/static/css/

