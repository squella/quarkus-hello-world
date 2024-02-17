#!/bin/sh

echo "Compiling the code..."
if ! mvn compile; then
  echo "PMD verification found problems in the code, aborting commit."
  exit 1
fi

echo "Running PMD..."
if ! mvn pmd:check; then
  echo "PMD verification found problems in the code, aborting commit."
  exit 1
fi

echo "Running unit tests..."
if ! mvn test; then
 echo "The unit tests failed, aborting the commit."
 exit 1
fi

echo "Pre-commit checks passed."
exit 0