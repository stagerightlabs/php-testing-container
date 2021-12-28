#!/bin/bash

# Build, tag and then push the PHP 7.3 image
./build.sh
docker push stagerightlabs/php-test-runner:7.2
echo "The newly built PHP 7.2 image has been pushed to docker hub."
