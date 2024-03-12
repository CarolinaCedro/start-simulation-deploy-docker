#!/bin/bash

backend_dir="start-back"

echo "Subindo backend: ..."
cd "$backend_dir" && ./build.sh
