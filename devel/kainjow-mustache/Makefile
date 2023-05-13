COMMENT =	header-only string template library

PKGNAME =	kainjow-mustache-$V
V =		4.1

GH_ACCOUNT =	kainjow
GH_PROJECT =	Mustache
GH_TAGNAME =	v$V

CATEGORIES =	devel

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/mustache.hpp ${PREFIX}/include

.include <bsd.port.mk>
