#!/bin/sh
scp    fpsc-website-published/index.html fpsc@functional.sc:~/fpsc-website-published/
scp -r fpsc-website-published/assets/*   fpsc@functional.sc:~/fpsc-website-published/assets/
scp    custom.css                        fpsc@functional.sc:~/fpsc-website-published/static/css/

