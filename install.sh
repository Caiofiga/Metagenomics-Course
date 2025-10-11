#!/usr/bin/env bash
set -euo pipefail

# 1) Make sure mamba exists
if ! command -v mamba &>/dev/null; then
  echo "mamba not found. Install Mambaforge/Miniforge or add mamba to PATH."
  exit 1
fi

# 2) Load mamba’s shell integration (no need to know base path)
eval "$(mamba shell hook -s bash)"

# 3) Create local env (like venv) if missing
if [ ! -d "./env" ]; then
  mkdir -p ./env
  mamba create -y -p ./env python=3.10
fi

# 4) Activate it
mamba activate ./env
