# $OpenBSD: Makefile,v 1.2 2017/04/10 11:46:34 sthen Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.3.1
MASTER_SITES=	${HOMEPAGE}
WANTLIB=	c m ${LIBCXX}

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

   AUTOCONF_VERSION = 2.61

# make sure portcheck doesn't count those AUTOMAKE_VERSION as assignments
CONFIGURE_ENV=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

MAKE_FLAGS=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

.include <bsd.port.mk>
