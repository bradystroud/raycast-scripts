# Agent Notes

This repo contains Raycast script commands.

Keep this repo simple.

- Prefer small, single-purpose scripts at the repo root.
- Use `#!/usr/bin/env bash` for shell scripts.
- Add `set -euo pipefail` for bash scripts.
- Raycast scripts must include the required `# @raycast.*` metadata block at the top of the file (see Raycast Script Commands docs).
- Avoid committing secrets (tokens, API keys, `.env`).
- If you add/remove scripts, update `README.md`.
