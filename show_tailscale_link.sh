#!/usr/bin/env bash
set -e

echo
echo "Installing Tailscale..."
echo

if ! command -v tailscale >/dev/null 2>&1; then
  curl -fsSL https://tailscale.com/install.sh | sh
fi

echo
echo "Starting Tailscale and generating login link..."
echo

sudo tailscale up
