#!/bin/bash

# Build and tag the PHP 8.1 image
docker build . -t stagerightlabs/php-test-runner:8.1

if [ $? -eq 0 ]
then
    echo "The PHP 8.1 image has been built and tagged."
fi
