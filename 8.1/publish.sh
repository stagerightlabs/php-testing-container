#!/bin/bash

# Build, tag and then push the PHP 8.1 image
./build.sh
docker push stagerightlabs/php-test-runner:8.1
echo "The newly built PHP 8.1 image has been pushed to docker hub."
