#!/bin/bash

find . -name "*.txt" -or -name "*.[h|c]" -or -name "*.[h|c]pp" -or -name "*.py" -or -name "*.md" -or -name "*.sh" -or -name "*.bash" -or -name "*.yml" | xargs dos2unix
