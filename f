#!/usr/local/bin/bash -

# formats the C file in acme window
# Unix (BSD) commands: indent, fmt
# Linux version of indent offer different type of switches

# select all content
echo -n "1,$" | 9p write acme/$winid/addr

# read in the body, indent, format, then write to data file, which replaces body content
9p read acme/$winid/body |  indent -bacc -bad -bap -bbb -bl -nce -i4 -ldi1 -lp -npsl -st -nut  |  fmt -w 80 | 9p write acme/$winid/data