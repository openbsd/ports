#!/bin/sh
cp $1 $1.old
cat $1.old \
| sed 's:\\FC::g' \
| sed 's:\\F\[\]::g' \
| sed 's:\.\\\":\ \\\":g' \
| sed 's:\\m\[blue\]::g' \
| sed 's:\\m\[\]::g' \
| sed 's:\.\.\\\":\\\":g' \
| sed '/\.toupper.*/d' \
> $1
