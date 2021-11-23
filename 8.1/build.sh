#!/bin/bash

# Build and tag the PHP 8.1 image
docker build . -t stagerightlabs/php-test-runner:8.1
echo "The PHP 8.1 image has been built and tagged."
