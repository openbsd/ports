# $OpenBSD: Makefile,v 1.6 2014/04/30 05:09:29 dcoppa Exp $

SHARED_ONLY =	Yes

COMMENT =	NAT Port Mapping Protocol client library

DISTNAME =	libnatpmp-20140401

SHARED_LIBS =	natpmp 0.0

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

WANTLIB =	c

MAKE_FLAGS =	CC="${CC}"

MAKE_ENV =	SHAREDLIB=libnatpmp.so.${LIBnatpmp_VERSION} \
		SONAME=libnatpmp.so.${LIBnatpmp_VERSION}

FAKE_FLAGS =	INSTALL="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALLPREFIX=${WRKINST}${PREFIX}

USE_GMAKE =	Yes

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/natpmpc.1 \
		${PREFIX}/man/man1/natpmpc.1

.include <bsd.port.mk>
