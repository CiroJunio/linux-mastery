# For error
#!/bin/bash
set -e

#1. Create a dir in home
BASE_DIR="$HOME/projeto"
PROJECT_DIR="$BASE_DIR/data/raw/logs"
mkdir -p "$PROJECT_DIR"

#2. Create a archive using absolute way
touch "$PROJECT_DIR/setup.log"

#3. Show relative path
cd "$BASE_DIR"
ls -lh data/raw/logs/setup.log

