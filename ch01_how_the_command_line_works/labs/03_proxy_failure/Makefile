# Makefile - 03_proxy_failure (Com Auditoria)
.PHONY: setup run-context test-posix verify clean

# 1. Instala a armadilha
setup:
	@chmod +x simulate_failure.sh
	@./simulate_failure.sh

# 2. PROVA DO SEQUESTRO (A evidência que faltava)
verify:
	@echo "--- AUDITORIA DE SISTEMA ---"
	@echo "1. Qual binário o shell está resolvendo?"
	@which mv || echo "ERRO: mv não encontrado no PATH"
	@echo "2. Testando interceptação..."
	@mv arquivo_teste.txt /tmp/destino_falso
	@echo "3. Verificando o log do espião:"
	@cat ~/tmp/shadow/interceptacao.log || echo "ERRO: Log não gerado."

# 3. Simulação de falha de diretório
run-context:
	@chmod +x failure_dependent.sh
	@./failure_dependent.sh

# 4. Teste POSIX
test-posix:
	@chmod +x posix_test.sh
	@./posix_test.sh

# 5. Sanitização
clean:
	@rm -rf ~/tmp/shadow ~/tmp/test_area
	@echo "Ambiente limpo."