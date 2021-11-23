#!/bin/bash

# Build, tag and then push the PHP 7.4 image
./build.sh
docker push stagerightlabs/php-test-runner:7.4
echo "The newly built PHP 7.4 image has been pushed to docker hub."
