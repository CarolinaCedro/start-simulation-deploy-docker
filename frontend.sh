#!/bin/bash

frontend_dir="start-front"

echo "Subindo frontend: ..."
cd "$frontend_dir" && ./build.sh
