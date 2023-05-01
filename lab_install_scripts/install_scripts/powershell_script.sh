#!/bin/bash

program=(powershell)

for program in "${programs[@]}"; do
    if ! command -v "$program" > /dev/null 2>&1; then
        sudo apt install "$program" -y
    fi
done
