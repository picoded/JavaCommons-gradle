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
    "JavaCommons-dstack/JavaCommons-core"
    "JavaCommons-pdf/JavaCommons-core"
    "JavaCommons-servlet/JavaCommons-core"
    "JavaCommons-servlet/JavaCommons-dstack"
)

# Setup for core
for MOD_DIR in ${SUBMODULE_LIST[@]}; do
    cd "$GRADLE_DIR/$MOD_DIR"
    git reset --hard
    git checkout master
    git pull
done