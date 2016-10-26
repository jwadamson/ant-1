#!/bin/sh
ant >/dev/null || exit 1

# literal newline char
NL="
"

./dist/bin/ant --execdebug \
  "-Dfoo=dollar\$_backtick\`_single'_double\"_trailingbackslash\\" \
  "-Dbar=trailingnewline$NL" \
  "-Dnl=$NL" \
  "-Dnlnl=$NL$NL" \
  "-Dnlnlnl=$NL$NL$NL" \
  "-Ddoublespace=  " \
  "-Dx=y" \
  "-f" "test.xml"
