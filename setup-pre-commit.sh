#!/bin/sh

cp pre-commit.sh .git/hooks/pre-commit

chmod +x .git/hooks/pre-commit

echo "Pre-commit hook successfully configured."