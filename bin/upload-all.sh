#!/bin/sh
scp -r ./fpsc-website-published  fpsc@functional.sc:~/
scp    ./html-custom/custom.css  fpsc@functional.sc:~/fpsc-website-published/static/css/
