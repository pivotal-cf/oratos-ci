#!/bin/bash

set -eu

source consts.sh
source ../lib.sh
source lib.sh

function main {
    upgrade_vault
}

main