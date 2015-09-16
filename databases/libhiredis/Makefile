# $OpenBSD: Makefile,v 1.1.1.1 2015/09/16 08:46:43 sthen Exp $

COMMENT=	minimalistic C client for Redis

V=		0.13.2
DISTNAME=	hiredis-$V
PKGNAME=	lib${DISTNAME}
DISTFILES=	${DISTNAME}{v$V}.tar.gz

SHARED_LIBS=	hiredis 0.0 # 0.13

CATEGORIES=	databases devel

HOMEPAGE=	https://github.com/redis/hiredis/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/redis/hiredis/archive/

LIBV=		HIREDIS_MAJOR=${LIBhiredis_VERSION:R} \
		HIREDIS_MINOR=${LIBhiredis_VERSION:E} \
		HIREDIS_SONAME=${LIBhiredis_VERSION}
MAKE_FLAGS=	OPTIMIZATION= DEBUG= ${LIBV}
FAKE_FLAGS=	INSTALL="cp -r" PREFIX="${TRUEPREFIX}" ${LIBV}

USE_GMAKE=	Yes
#NO_TEST=	Yes

post-install:
	rm -f ${PREFIX}/lib/libhiredis.so

.include <bsd.port.mk>
