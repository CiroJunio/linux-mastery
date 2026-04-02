# For errros
#!/bin/bash
set -e

#1. Create a basic access in shadow
DIR="$home/tmp/shadow"
mkdir -p "$DIR"

# 2. Creates the file that returns zero.
cd "$DIR"  
touch mv

