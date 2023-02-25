#!/bin/bash -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
IMAGE='jupyter/scipy-notebook:overlay'

echo "[*] Build context: $SCRIPT_DIR"
echo "[*] Build image  : $IMAGE"

docker build -t $IMAGE $SCRIPT_DIR

echo "[*] Build complete"
