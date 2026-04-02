# Laboratório: 03_proxy_failure

## 1. OVERVIEW
Simular um sequestro de comando via `$PATH` e uma falha de diretório (`cd`) para entender como scripts reportam sucesso falso (`exit 0`) enquanto falham ou causam danos no mundo real.

## 2. TECHNICAL CONTEXT
* **Core Concept:** Precedência de **$PATH** e **Caminhos Absolutos vs. Relativos**.
* **Tools Used:** Bash, Sh (POSIX), Redirecionamento de Fluxo (`<<`, `>>`).

## 3. DEBUGGING & LEARNING
* **Issue:** Comandos que dependem do estado anterior (`cd`) podem causar danos se o script continuar a execução no diretório errado.
* **Solution:** Uso de condicionais (`if/then`) e caminhos absolutos (`$HOME`) para garantir a integridade do contexto.
* **Technical Learning:** O shell avalia nomes de arquivos na ordem do `$PATH`. Um binário falso com o mesmo nome de um real (`mv`) pode interceptar operações silenciosamente.

## 4. HOW TO REPRODUCE
1. `make setup` (Cria o `mv` falso em `~/tmp/shadow`).
2. `export PATH="$HOME/tmp/shadow:$PATH"` (Ativa o sombreamento).
3. `make verify` Mostra como mv foi alterado.
4. `make run-context` (Simula a falha de diretório).
5. `make test-posix` (Verifica a resolução do comando no padrão POSIX).

## 5. RESET DO AMBIENTE
* **Passo 1:** Execute `make clean` para remover as pastas temporárias.
* **Passo 2:** Para resetar o `$PATH`, você tem duas opções:
    1. **O Caminho Simples:** Feche o terminal atual e abra um novo. O `export` feito no passo 2 não persiste entre sessões.
    2. **O Caminho Técnico:** Execute o comando abaixo para remover o diretório de sombra da sua variável atual:
       `export PATH=$(echo $PATH | sed -e "s|$HOME/tmp/shadow:||")`