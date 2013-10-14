# $OpenBSD: Makefile,v 1.1.1.1 2013/10/14 21:23:34 juanfra Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.5

SHARED_LIBS +=		lz	0.0 # 1.5

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html

# GPLv3+ with special exception
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ENV +=	LIBlz_VERSION=${LIBlz_VERSION}

CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
