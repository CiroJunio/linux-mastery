# For errros
#!/bin/bash
set -e

#1. Environment configuration
BASE_DIR="$HOME/tmp/test_area"
mkdir -p "$BASE_DIR/origem"

# 2. Creating the scenario
touch "$BASE_DIR/origem/dados_criticos.txt"
echo "Dados de Produção" > "$BASE_DIR/origem/dados_criticos.txt"

# 3. Context-dependent failure
TARGET_DIR="$BASE_DIR/ghost_folder"

echo "Tentando acessar o contexto: $TARGET_DIR"

