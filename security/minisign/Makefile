# $OpenBSD: Makefile,v 1.1.1.1 2019/07/17 08:24:03 bentley Exp $

COMMENT =	dead simple tool to sign files and verify digital signatures

GH_ACCOUNT =	jedisct1
GH_PROJECT =	minisign
GH_TAGNAME =	0.8

CATEGORIES =	security sysutils

HOMEPAGE =	https://jedisct1.github.io/minisign/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c sodium

MODULES =		devel/cmake
LIB_DEPENDS =		security/libsodium

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="-I${LOCALBASE}/include ${CFLAGS}"

NO_TEST =		Yes

.include <bsd.port.mk>
