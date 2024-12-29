#!/bin/bash

# Build and tag the PHP 8.4 image
docker build . -t stagerightlabs/php-test-runner:8.4

if [ $? -eq 0 ]
then
    echo "The PHP 8.4 image has been built and tagged."
fi
