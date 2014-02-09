# $OpenBSD: Makefile,v 1.1.1.1 2014/02/09 16:11:16 zhuk Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.3.1
MASTER_SITES=	${HOMEPAGE}
WANTLIB=	c m stdc++

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

   AUTOCONF_VERSION = 2.61

# make sure portcheck doesn't count those AUTOMAKE_VERSION as assignments
CONFIGURE_ENV=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

MAKE_FLAGS=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

.include <bsd.port.mk>
