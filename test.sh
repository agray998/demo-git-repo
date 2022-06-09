#!/bin/bash
declare -a names=(Alice Bob Claire Derek)
for name in "${names[@]}"; do
  if [ $(java Greet $name) == "Hello, $name" ]; then
    echo "Test Passed"
  else
    echo "Test failed!"
    exit 1
  fi
done

