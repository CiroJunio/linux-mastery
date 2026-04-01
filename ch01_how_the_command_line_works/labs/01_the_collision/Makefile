BIN = /tmp/fake_bin

setup:
	@mkdir -p $(BIN)
	@printf "#!/bin/bash\necho 'HIJACKED'\n" > $(BIN)/ls
	@chmod +x $(BIN)/ls
	@echo "Target ready. Run: export PATH=$(BIN):\$$PATH"

check:
	@which ls
	@echo "Current PATH: \$$PATH"

clean:
	@rm -rf $(BIN)