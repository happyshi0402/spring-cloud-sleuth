#!/bin/bash

set -o errexit

mkdir -p target

SCRIPT_URL="https://raw.githubusercontent.com/spring-cloud-samples/brewery/master/runAcceptanceTests.sh"
AT_WHAT_TO_TEST="SLEUTH"

cd target

curl "${SCRIPT_URL}" --output runAcceptanceTests.sh

chmod +x runAcceptanceTests.sh

./runAcceptanceTests.sh -t "${AT_WHAT_TO_TEST}" -k 1