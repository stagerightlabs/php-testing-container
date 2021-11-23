#!/bin/bash

# Build and tag the PHP 7.4 image
docker build . -t stagerightlabs/php-test-runner:7.4
echo "The PHP 7.4 image has been built and tagged."
