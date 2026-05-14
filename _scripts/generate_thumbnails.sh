#!/bin/bash
set -e
mkdir -p images/pub_thumbnail
for pdf in publications/*.pdf; do
  [ -f "$pdf" ] || continue
  basename=$(basename "$pdf" .pdf)
  thumbnail="images/pub_thumbnail/${basename}.jpg"
  if [ ! -f "$thumbnail" ] || [ "$pdf" -nt "$thumbnail" ]; then
    echo "Generating $thumbnail from $pdf"
    pdftocairo -jpeg -singlefile -scale-to 600 "$pdf" "images/pub_thumbnail/${basename}"
  else
    echo "Skipping $thumbnail (already up to date)"
  fi
done
