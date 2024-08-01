#!/bin/bash

FILE="/opt/nvim-linux64/bin/nvim-2"

if [ -e "$FILE" ]; then
	echo nvim installed
else
	echo nvim not installed...
fi
