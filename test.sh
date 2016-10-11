#!/bin/sh
./dist/bin/ant --execdebug \
  "-Dfoo=dollar\$_backtick\`_single'_double\"\"_trailingbackslash\\" \
  "-Dbar=trailingnewline
" \
  "-Dnewline=
" \
  "-Ddoublespace=  " \
  "-Dx=y" \
  "-f" "test.xml"
