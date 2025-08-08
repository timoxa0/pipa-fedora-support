#!/usr/bin/env bash
set -e
COPR_PROJECT="pipa-support"
RELEASE_VER="f42"

projects=(kernel alsa-ucm-conf-xiaomi-pipa pipa-dracut pipa-sensors pipa-kernel-flasher-hook xiaomi-pipa-firmware)

# Build all projects if no arguments are passed
if [ "$#" -gt 0 ]; then
    projects=("$@")
fi

for project in "${projects[@]}"; do
    echo "[*] Building $project"
    cd "$project" || (echo "Error: $project not found" && exit)
    # Run prebuild.sh if exists
    if [ -f prebuild.sh ]; then
        echo "[*] Running prebuild.sh for $project"
        ./prebuild.sh
    fi
    spectool -g "$project".spec
    if [ "$LOCAL" == "1" ]; then 
        fedpkg --release $RELEASE_VER local
    elif [ "$MOCKBUILD" == "1" ]; then 
        fedpkg --release $RELEASE_VER mockbuild
    else
        fedpkg --release $RELEASE_VER copr-build $COPR_PROJECT --nowait
    fi
    cd ..
done
