# $OpenBSD $

COMMENT =	minimalistic command line pastebin
PKGNAME =	${DISTNAME:L}
CATEGORIES =	www net

GH_ACCOUNT =	PurritoBin
GH_PROJECT =	PurritoBin
GH_TAGNAME =	0.3.3

HOMEPAGE =	https://bsd.ac/
MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	${COMPILER_LIBCXX} c m usockets

# C++2a
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	www/uwebsockets

LIB_DEPENDS =	net/usockets

NO_TEST	=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/purritobin
	${INSTALL_DATA} ${WRKSRC}/frontend/paste.html \
		${PREFIX}/share/purritobin
	${INSTALL_DATA} ${WRKSRC}/clients/POSIX_shell_client.sh \
		${PREFIX}/share/purritobin

FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

.include <bsd.port.mk>
