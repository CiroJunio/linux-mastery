### 2. O Incidente de Produção: A Falha do Proxy Sombra

**Impacto nos negócios:** Deslocamento de dados de alta gravidade. Um script crítico de "Migração Noturna" relatou 100% de sucesso (Código de Saída 0), mas a importação do banco de dados de produção falhou porque os arquivos de origem estavam "ausentes" no volume de destino. US$ 240 mil em receita diária projetada estão em risco devido a dados desatualizados.

**Sintomas do sistema:**

- `find /data/target -name "*.csv"`Retorna nulo apesar do `mv`comando ter sido executado sem erros..
- A execução manual do script de migração funciona para o desenvolvedor principal, mas falha quando acionada pela conta de serviço automatizada.
- `$PATH`O sistema está usando uma configuração não padrão onde `/usr/local/bin`precede`/bin`.

---

### 3. O Projeto do Arquiteto (A Armadilha)

Crie um ambiente local que simule essa falha. Você deve projetar o seguinte estado:

1. **Sombreamento Binário:** Crie um script com o nome especificado `mv`em um diretório personalizado (por exemplo, `/tmp/shadow/`). Este script deve registrar os argumentos passados ​​para ele em um arquivo oculto e, em seguida, sair com o código 0 sem mover nada. Modifique as configurações da sua sessão de shell atual `$PATH`para priorizar este diretório..
2. **Falha dependente do contexto:** Escreva um script shell que execute um comando `cd`em um caminho relativo e, em seguida, execute um `rm`comando. Configure o ambiente para que, se a `cd`operação falhar (por exemplo, permissões de diretório), ela `rm`seja executada no diretório _anterior_ em vez de ser interrompida..
3. **Restrição POSIX:** Tente usar uma combinação de "flags curtas" (por exemplo, `--` `ls -lh`) em um script e, em seguida, force a execução do script em um shell POSIX estrito que interpreta essas flags de forma diferente ou que não possui aliases não padronizados específicos nos quais você confiava..