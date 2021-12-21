#!/bin/bash

# Build, tag and then push the PHP 8.1 image
./build.sh
if [ $? -ne 0 ]
then
    exit $?
fi

docker push stagerightlabs/php-test-runner:8.1
if [ $? -eq 0 ]
then
    echo "The newly built PHP 8.1 image has been pushed to docker hub."
fi
