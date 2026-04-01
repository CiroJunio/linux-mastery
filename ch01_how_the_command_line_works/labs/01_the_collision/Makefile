BIN = /tmp/fake_bin

setup:
	@mkdir -p $(BIN)
	@printf "#!/bin/bash\necho 'SISTEMA SEQUESTRADO'\n" > $(BIN)/ls
	@chmod +x $(BIN)/ls
	@echo "1. Ative: export PATH=$(BIN):\$$PATH"
	@echo "2. Teste: ls"

clean:
	@rm -rf $(BIN)
	@hash -r
	@echo "Arquivos removidos. Se o 'ls' ainda falhar, use: /bin/ls ou reinicie o terminal."