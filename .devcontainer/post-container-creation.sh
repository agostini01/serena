#!/bin/bash

set -euo pipefail

# Create virtual environment and install dependencies with dev extras

# Docker volume mounting restricts the linking mode, this suppresses warnings
export UV_LINK_MODE=copy

if [ ! -d ".venv" ]; then
    uv venv
fi

source .venv/bin/activate
uv  pip install --all-extras -r pyproject.toml -e .

export PATH="$PATH:/workspaces/serena/.venv/bin"

source .venv/bin/activate
