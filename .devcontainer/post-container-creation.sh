#!/bin/bash

# Create virtual environment and install dependencies with dev extras
uv venv
source .venv/bin/activate
uv pip install --all-extras -r pyproject.toml -e .

export PATH="$PATH:/workspaces/serena/.venv/bin"

source .venv/bin/activate
