#!/bin/bash

# Build and tag the PHP 7.2 image
docker build . -t stagerightlabs/php-test-runner:7.2
echo "The PHP 7.2 image has been built and tagged."
