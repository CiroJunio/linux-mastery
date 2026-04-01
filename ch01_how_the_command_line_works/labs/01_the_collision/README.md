#### 1. Result
> **"Manipulated `$PATH` precedence to intercept system commands via a custom decoy script."**

#### 2. THE STACK (The Tools)
* **Logic:** PATH Precedence.
* **Tools:** `Makefile`, `export`, `which`.

#### 3. THE GREASE (The Delta)
* **The Error:** "Decoy failed due to relative path in shebang."
* **The Fix:** "Used `#!/bin/bash` for absolute resolution."
* **The Hack:** "Confirmed that `export` only affects the current shell session."

#### 🛠️ RUN
1. `make setup`
2. `export PATH="/tmp/fake_bin:$PATH"`
3. `ls`
4. `make clean`
4. `hash -r`