#!/usr/bin/awk -f

/^[[:space:]]*\}[[:space:]]*$/ && PERL_HEADERS_START == 2 {
	print ""
	print "// Avoid clashing with GCC locale_facets.h"
	print "#undef do_open"
	print "#undef do_close"
}

/^[[:space:]]*\}[[:space:]]*$/ {
	PERL_HEADERS_START = 0
}

/#include[[:space:]]+.*[\/"<]perl\.h[">][[:space:]]*$/ && PERL_HEADERS_START == 1 {
	PERL_HEADERS_START = 2
}

/extern "C" \{/ {
	PERL_HEADERS_START = 1
}

{
	print
}
