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

#3. Grant execution permisison
chmod +x "$FAKE_DIR/ls"

echo "The fake 'ls' is ready at $FAKE_DIR/ls"
echo "Now, to spring the trap, run: export PATH=\"$FAKE_DIR:\$PATH\""    