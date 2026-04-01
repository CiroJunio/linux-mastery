#!/bin/bash
set -e

#1. Create a fake repository
FAKE_DIR="/tmp/fake_bin"
mkdir -p "$FAKE_DIR"

#2. Create the "ls directory"
cat << EOF > /tmp/fake_bin/ls
#!/bin/bash
echo "^SISTEMA SEQUESTRADO^"
EOF

#3. Grant execution permisison
chmod +x /tmp/fake_bin/ls

echo "The fake 'ls' is ready at $FAKE_DIR/ls"
echo "Now, to spring the trap, run: export PATH="/tmp/fake_bin:$PATH""    