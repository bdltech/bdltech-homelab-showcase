#!/usr/bin/env bash
set -euo pipefail

fail=0

echo "Checking tracked files for material that should not be public..."

# Obvious secret-bearing file names.
while IFS= read -r -d '' file; do
  case "$file" in
    *.env.example|*.example|*/README.md|README.md|SECURITY.md)
      continue
      ;;
    *.env|*/.env|*.pem|*.key|*.p12|*.pfx|id_rsa|id_ed25519)
      echo "::error file=$file::Potential secret-bearing file is tracked"
      fail=1
      ;;
  esac
done < <(git ls-files -z)

# Private IPv4 ranges are intentionally omitted from this public showcase.
# Documentation examples should use named placeholders instead.
while IFS= read -r hit; do
  [ -z "$hit" ] && continue
  echo "::error::Private IPv4 address found: $hit"
  fail=1
done < <(
  git grep -nE     '(^|[^0-9])(10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}|192\.168\.[0-9]{1,3}\.[0-9]{1,3}|172\.(1[6-9]|2[0-9]|3[01])\.[0-9]{1,3}\.[0-9]{1,3})([^0-9]|$)'     -- ':!scripts/check-public-safety.sh' || true
)

# Common credential-like assignments. Ignore placeholders and shell variable expansion.
while IFS= read -r hit; do
  [ -z "$hit" ] && continue
  if printf '%s\n' "$hit" | grep -Eq '<[A-Z0-9_]+>|\$\{|\$[A-Za-z_]'; then
    continue
  fi
  echo "::error::Possible credential-like assignment found: $hit"
  fail=1
done < <(
  git grep -niE     '(password|passwd|token|secret|api[_-]?key|client[_-]?secret)[[:space:]]*[:=][[:space:]]*[^[:space:]]+'     -- ':!scripts/check-public-safety.sh' ':!SECURITY.md' || true
)

if [ "$fail" -ne 0 ]; then
  echo "Public-safety check failed."
  exit 1
fi

echo "Public-safety check passed."
