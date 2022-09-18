#!/bin/sh

# https://www.gnu.org/software/sed/manual/html_node/Text-search-across-multiple-lines.html
# https://www.gnu.org/software/sed/manual/html_node/Multiline-techniques.html#Multiline-techniques

# = Print the current input line number (with a trailing newline)

sed -En '{N; /\bArgumentException.*RIC.*while subscribing\b/{s/^.*RIC (.*) while subscribing.*$/\1/p} ; D}' swingst.log

