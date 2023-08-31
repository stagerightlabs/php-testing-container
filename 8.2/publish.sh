#!/bin/bash

# Build, tag and then push the PHP 8.2 image
./build.sh
if [ $? -ne 0 ]
then
    exit $?
fi

docker push stagerightlabs/php-test-runner:8.2
if [ $? -eq 0 ]
then
    echo "The newly built PHP 8.2 image has been pushed to docker hub."
fi
