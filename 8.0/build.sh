#!/bin/bash

# Build and tag the PHP 8.0 image
docker build . -t stagerightlabs/php-test-runner:8.0
echo "The PHP 8.0 image has been built and tagged."
