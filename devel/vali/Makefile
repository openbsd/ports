COMMENT =	Varlink C implementation and code generator

DIST_TUPLE =	fdo emersion vali v0.1.1 .
REVISION =	0
SHARED_LIBS +=  vali	0.0 # 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE = Yes

WANTLIB =	aml json-c c

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c

MODULES =       devel/meson

LIB_DEPENDS =	devel/aml \
		devel/json-c

.include <bsd.port.mk>
