#!/bin/bash

set -e

echo "==========Starting Maven Commands=========="

if [[ -z $APP_DIR ]]; then
    echo "APP_DIR env isn't set. Running in current directory"
else
    cd $APP_DIR
fi

echo "Executing command: mvn $@"
sh -c "mvn $@"

echo "==========Finished Maven Commands=========="
