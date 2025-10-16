#!/usr/bin/env bash

set -euo pipefail

: "${AZURE_OPENAI_API_KEY:?Set AZURE_OPENAI_API_KEY in your environment before running codex.sh}"
: "${GITHUB_PERSONAL_ACCESS_TOKEN:?Set GITHUB_PERSONAL_ACCESS_TOKEN in your environment before running codex.sh}"

mkdir -p ~/.codex
cp .codex/config.toml ~/.codex/config.toml
codex -s danger-full-access --dangerously-bypass-approvals-and-sandbox
