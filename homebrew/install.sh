#!/usr/bin/env bash
set -euo pipefail
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

if test ! "$(which brew)"; then
  echo "  Installing Homebrew for you."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

exit 0
