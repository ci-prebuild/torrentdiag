#! /usr/bin/env bash

set -euo pipefail

PKG_REPO="https://kl.netlib.re/forge/selfhoster1312/torrentdiag"
PKG_BRANCH="main"

PKG_REF="$(git ls-remote -b $PKG_REPO refs/heads/$PKG_BRANCH | cut -f1)"
echo "Updating to latest commit on $PKG_REPO branch $PKG_BRANCH: $PKG_REF"

sed -i "s,PKG_REPO: ".*",PKG_REPO: \"$PKG_REPO\"," .github/workflows/release.yml
sed -i "s,PKG_REF: ".*",PKG_REF: \"$PKG_REF\"," .github/workflows/release.yml