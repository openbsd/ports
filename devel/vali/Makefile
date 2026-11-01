COMMENT =	Varlink C implementation and code generator

V =		0.1.1
DIST_TUPLE =	fdo emersion vali v${V} .
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

WRKDIST =       ${WRKDIR}/vali-v${V}

.include <bsd.port.mk>
