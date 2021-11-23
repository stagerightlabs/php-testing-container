#!/bin/bash

# Build and tag the PHP 7.3 image
docker build . -t stagerightlabs/php-test-runner:7.3
echo "The PHP 7.3 image has been built and tagged."
