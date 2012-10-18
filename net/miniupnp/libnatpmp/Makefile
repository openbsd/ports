# $OpenBSD: Makefile,v 1.2 2012/10/18 14:56:55 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	NAT Port Mapping Protocol client library

DISTNAME =	libnatpmp-20120821

SHARED_LIBS =	natpmp 0.0

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

WANTLIB =	c

MAKE_FLAGS =	CC="${CC}"

MAKE_ENV =	SHAREDLIB=libnatpmp.so.${LIBnatpmp_VERSION} \
		SONAME=libnatpmp.so.${LIBnatpmp_VERSION}

FAKE_FLAGS =	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALLPREFIX=${WRKINST}${PREFIX}

USE_GMAKE =	Yes

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/natpmpc.1 \
		${PREFIX}/man/man1/natpmpc.1

.include <bsd.port.mk>
