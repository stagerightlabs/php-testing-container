#!/bin/bash

# Build, tag and then push the PHP 8.0 image
./build.sh
docker push stagerightlabs/php-test-runner:8.0
echo "The newly built PHP 8.0 image has been pushed to docker hub."
