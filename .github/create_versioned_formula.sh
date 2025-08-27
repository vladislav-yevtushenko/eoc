#!/usr/bin/env bash

# SPDX-FileCopyrightText: Copyright (c) 2022-2025 Objectionary.com
# SPDX-License-Identifier: MIT

# This script checks all tags in the repo and creates missing versioned Homebrew formula files.

set -euo pipefail

GITHUB_REPO="objectionary/eoc"
FORMULA_DIR="Formula"
GITHUB_API="https://api.github.com/repos/${GITHUB_REPO}/tags"
GITHUB_TOKEN="${1:-}"

if [ -n "$GITHUB_TOKEN" ]; then
  AUTH_HEADER="-H 'Authorization: token $GITHUB_TOKEN'"
else
  AUTH_HEADER=""
fi

if [ -d "$FORMULA_DIR" ]; then
  echo "Formula directory $FORMULA_DIR already exists."
else
  echo "Creating formula directory $FORMULA_DIR..."
  mkdir -p "$FORMULA_DIR"
fi

echo "Fetching tags from $GITHUB_REPO..."
TAGS=$(curl -s $AUTH_HEADER "$GITHUB_API" | grep '"name"' | cut -d '"' -f 4)

for TAG in $TAGS; do
  VERSION="${TAG#v}"
  CLASSVER=$(echo "$VERSION" | sed 's/\.//g')
  FORMULA_FILE="$FORMULA_DIR/eoc@${VERSION}.rb"
  TARBALL_URL="https://github.com/${GITHUB_REPO}/archive/refs/tags/${TAG}.tar.gz"
  if [ -f "$FORMULA_FILE" ]; then
    echo "$FORMULA_FILE already exists, skipping."
    continue
  fi
  echo "Processing $TAG..."
  curl -L -o "/tmp/eoc-${VERSION}.tar.gz" "$TARBALL_URL"
  SHA256=$(shasum -a 256 "/tmp/eoc-${VERSION}.tar.gz" | awk '{print $1}')
  cat >"$FORMULA_FILE" <<EOF
require "language/node"
class EocAT${CLASSVER} < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "$TARBALL_URL"
  version "$VERSION"
  sha256 "$SHA256"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/eoc", "--version"
  end
end
EOF
  echo "Created $FORMULA_FILE"
done
