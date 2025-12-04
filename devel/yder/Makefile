COMMENT =	logging library for C applications

GH_ACCOUNT =	babelouest
GH_PROJECT =	yder
GH_TAGNAME =	v1.4.20

SHARED_LIBS =	yder		0.0

CATEGORIES =	devel

HOMEPAGE =	https://babelouest.github.io/yder/

# LGPL 2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	orcania

# workaround -Werror issues with base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/cmake

LIB_DEPENDS +=		devel/orcania>=2.3.3

CONFIGURE_ARGS +=	-DWITH_JOURNALD:BOOL=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
