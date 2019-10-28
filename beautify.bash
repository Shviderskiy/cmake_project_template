#!/bin/bash

find . -name "*.txt" -or -name "*.[h|c]" -or -name "*.[h|c]pp" -or -name "*.py" -or -name "*.md" -or -name "*.sh" -or -name "*.bash" | xargs dos2unix
