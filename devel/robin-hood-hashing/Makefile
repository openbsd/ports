COMMENT =	fast, memory-efficient, header-only hashtable

GH_ACCOUNT =	martinus
GH_PROJECT =	robin-hood-hashing
GH_TAGNAME =	3.11.4

CATEGORIES =	devel

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/include/robin_hood.h \
		${PREFIX}/include/

.include <bsd.port.mk>
