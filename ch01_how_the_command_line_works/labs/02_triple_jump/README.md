#### 1. OVERVIEW
> Automated the "Triple Jump" filesystem exercise using a Bash script with dynamic path variables.

#### 2. TECHNICAL CONTEXT
* **Core Concept:** Variable Expansion & Directory Traversal.
* **Tools Used:** `$HOME`, `mkdir -p`, `cd`.

#### 3. DEBUGGING & LEARNING
* **Issue:** Hardcoded root paths (`/projeto`) caused permission errors.
* **Solution:** Switched to user-space paths using the `$HOME` environment variable.
* **Technical Learning:** Scripts should use absolute paths for creation (`touch`) to ensure reliability, but can use relative paths for verification (`ls`) to demonstrate context awareness.

#### 🛠️ RUN
1. `make setup`
2. `make clean`


