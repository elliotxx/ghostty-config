#!/usr/bin/env sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
target="${HOME}/.config/ghostty"

mkdir -p "${HOME}/.config"

if [ -e "${target}" ] || [ -L "${target}" ]; then
  current=$(readlink "${target}" 2>/dev/null || true)
  if [ "${current}" = "${repo_dir}" ]; then
    printf 'ghostty config already linked: %s -> %s\n' "${target}" "${repo_dir}"
    exit 0
  fi

  printf 'refusing to overwrite existing path: %s\n' "${target}" >&2
  printf 'move it aside first, then rerun this script.\n' >&2
  exit 1
fi

ln -s "${repo_dir}" "${target}"
printf 'linked ghostty config: %s -> %s\n' "${target}" "${repo_dir}"

