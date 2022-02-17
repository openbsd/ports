# $OpenBSD: Makefile,v 1.12 2022/02/17 04:34:03 kirby Exp $

COMMENT =	NAT Port Mapping Protocol client library

DISTNAME =	libnatpmp-20150609
REVISION =	2

SHARED_LIBS =	natpmp 0.1

WANTLIB =	c

MAKE_FLAGS =	CC="${CC}"

MAKE_ENV =	SHAREDLIB=libnatpmp.so.${LIBnatpmp_VERSION} \
		SONAME=libnatpmp.so.${LIBnatpmp_VERSION}

FAKE_FLAGS =	INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALLPREFIX=${WRKINST}${PREFIX}

USE_GMAKE =	Yes

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/natpmpc.1 \
		${PREFIX}/man/man1/natpmpc.1

.include <bsd.port.mk>
