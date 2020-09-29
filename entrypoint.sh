#!/bin/bash

set -e

echo "==========Starting Maven Commands=========="

if [[ -z $APP_DIR ]]; then
    echo "APP_DIR env isn't set. Running in current directory"
else
    cd $APP_DIR
fi

echo "Executing command: mvn $1"
sh -c "mvn $1"

echo "==========Finished Maven Commands=========="
