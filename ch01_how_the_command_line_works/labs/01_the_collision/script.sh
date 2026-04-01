#!/bin/bash
set -e

#1. Create a fake repository
FAKE_DIR="/tmp/fake_bin"
mkdir -p "$FAKE_DIR"

#2. Create the "ls directory"
cat << EOF > "$FAKE_DIR/ls"
#!bin/bash
echo "^SISTEMA SEQUESTRADO^"
EOF

    