#!/bin/sh
scp -r ./fpsc-website-published  fpsc:~/
scp    ./html-custom/custom.css  fpsc:~/fpsc-website-published/static/css/
