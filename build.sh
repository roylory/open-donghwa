#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$ROOT_DIR/src"
BUILD_DIR="$ROOT_DIR/build"

mkdir -p "$BUILD_DIR"

if [ ! -d "$SRC_DIR" ]; then
  echo "No src directory found at $SRC_DIR" >&2
  exit 1
fi

find "$SRC_DIR" -mindepth 2 -maxdepth 2 -name "*.qmd" -print | sort | while IFS= read -r book; do
  if [ -z "$book" ]; then
    continue
  fi
  book_name="$(basename "$book" .qmd)"
  output_file="$book_name.pdf"
  echo "Rendering ${book#$ROOT_DIR/} -> build/$output_file"
  quarto render "$book" --to pdf --output-dir "$BUILD_DIR" --output "$output_file"
done
