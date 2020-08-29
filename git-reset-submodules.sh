#!/bin/bash

#
# Reset the various submodules 
#
GRADLE_DIR="$(pwd)"

#
# List of submodules
#
SUBMODULE_LIST=(
    "JavaCommons-core"
    "JavaCommons-dstack"
    "JavaCommons-module"
    "JavaCommons-pdf"
    "JavaCommons-servlet"
)

# Setup for core
for MOD_DIR in ${SUBMODULE_LIST[@]}; do
    cd "$GRADLE_DIR/$MOD_DIR"
    git reset --hard
    git checkout master
    git pull
done