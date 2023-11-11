#!/bin/bash

function strlen() {
    echo "$@" | awk '{ print length }'
}

function yaml2json() {
    python3 -c 'import json, sys, yaml; y = yaml.safe_load(sys.stdin.read()); json.dump(y, sys.stdout)'
}

function json2yaml() {
    python3 -c 'import json, sys, yaml; y = json.load(sys.stdin.read()); yaml.dump(y, sys.stdout)'
}

