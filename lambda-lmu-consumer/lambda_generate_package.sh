#! /bin/sh

cd env/lib/python3.9/site-packages/

zip -r ../../../../my-deployment-package.zip .

cd ../../../../

zip -g lmu-comsumer-deployment-package.zip lambda_function.py