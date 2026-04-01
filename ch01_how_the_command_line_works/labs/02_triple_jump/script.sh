# For error
#!/bin/bash
set -e

#1. Create a dir in home
PROJECT_DIR="$HOME/projeto/data/raw/logs"
mkdir -p "$PROJECT_DIR"

#2. Create a archive using absolute way
touch "$PROJECT_DIR/setup.log"
