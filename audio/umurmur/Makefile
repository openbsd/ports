# $OpenBSD: Makefile,v 1.14 2014/09/04 12:33:27 dcoppa Exp $

COMMENT =		minimalistic Mumble server

V =			0.2.15
GH_ACCOUNT =		fatbob313
GH_PROJECT =		umurmur
GH_TAGNAME =		${V}
GH_COMMIT =		f66c0c3d630aaff1c4d589bc4d884067f00b6529
DISTNAME =		${GH_PROJECT}-${V}

CATEGORIES =		audio

HOMEPAGE =		https://code.google.com/p/umurmur/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c config crypto protobuf-c>=1.0 ssl

MODULES =		devel/cmake

LIB_DEPENDS =		devel/libconfig \
			devel/protobuf-c>=1.0.1

CONFIGURE_ARGS =	-DSSL=openssl

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/conf.c ${WRKSRC}/src/config.h.in \
		${WRKSRC}/umurmur.conf.example

post-install:
	${INSTALL_MAN} ${FILESDIR}/umurmurd.1 \
		${PREFIX}/man/man1/
	${SUBST_MAN} ${FILESDIR}/umurmur.conf.1 \
			${PREFIX}/man/man1/umurmur.conf.1

.include <bsd.port.mk>
