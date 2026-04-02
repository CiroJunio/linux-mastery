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

# 4. Failure simulation
if cd "$TARGET_DIR" 2>/dev/null; then
    echo "Sucesso: No diretório correto. Limpando..."
    rm -rf * else
    echo "ERRO CRÍTICO: 'cd' falhou! [cite: 149]"
    echo "Se não houvesse essa verificação, onde o 'rm -rf *' rodaria?"
    echo "Resposta: Ele rodaria em $(pwd), deletando seus arquivos reais."
    exit 1
fi