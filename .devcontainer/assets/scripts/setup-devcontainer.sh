#!/usr/bin/env bash

# Install Ansible
pipx install --include-deps ansible ansible-lint

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y \
    && echo "source /home/vscode/.cargo/env" >> /home/vscode/.bashrc

# Make git happy
git config --global --add safe.directory /workspaces/homelab-cockpit
