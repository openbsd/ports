# $OpenBSD: Makefile,v 1.19 2015/09/01 13:57:59 dcoppa Exp $

COMMENT =		minimalistic Mumble server

V =			0.2.16a
GH_ACCOUNT =		fatbob313
GH_PROJECT =		umurmur
GH_TAGNAME =		${V}
DISTNAME =		${GH_PROJECT}-${V}
REVISION =		1
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
	${INSTALL_MAN} ${FILESDIR}/umurmurd.8 \
		${PREFIX}/man/man8/
	${SUBST_MAN} ${FILESDIR}/umurmur.conf.5 \
		${PREFIX}/man/man5/umurmur.conf.5

.include <bsd.port.mk>
