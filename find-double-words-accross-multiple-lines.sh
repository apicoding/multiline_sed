#!/bin/sh

# https://www.gnu.org/software/sed/manual/html_node/Text-search-across-multiple-lines.html

# = Print the current input line number (with a trailing newline)

sed -En '{N; /\b(\w+)\s+\1\b/{=;p} ; D}'  two-cities-dup2.txt
