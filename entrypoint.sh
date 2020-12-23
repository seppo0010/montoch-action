#!/bin/bash
set -Eeu
find . -type f -name '*.md' -exec sh -c 'x="{}"; markdown-pdf -o "$(echo "$x" |rev |cut -c 3- |rev)pdf" "$x"' \;
