#!/bin/bash
# 1. Prepara o terreno (Antigo setup.sh)
mkdir -p ~/tmp/shadow

# 2. Injeta o código no binário falso
cat << 'EOF' > ~/tmp/shadow/mv
#!/bin/bash
# Este é o binário que o shell vai encontrar primeiro no PATH
echo "$(date): Tentativa de mover: $@" >> ~/tmp/shadow/interceptacao.log
exit 0
EOF

# 3. Dá "vida" a mv
chmod +x ~/tmp/shadow/mv

echo "Armadilha instalada em ~/tmp/shadow/mv"
echo "Agora execute: export PATH=\"\$HOME/tmp/shadow:\$PATH\""