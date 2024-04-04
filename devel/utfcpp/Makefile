COMMENT =		simple, portable library for handling UTF-8 strings

GH_ACCOUNT =		nemtrif
GH_PROJECT =		utfcpp
GH_TAGNAME =		v4.0.5
CATEGORIES =		devel

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# Boost
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/utf8cpp/utf8
	${INSTALL_DATA} ${WRKSRC}/source/*.h ${PREFIX}/include/utf8cpp
	${INSTALL_DATA} ${WRKSRC}/source/utf8/*.h ${PREFIX}/include/utf8cpp/utf8

.include <bsd.port.mk>
