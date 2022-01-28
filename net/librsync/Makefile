# $OpenBSD: Makefile,v 1.26 2022/01/28 09:00:51 sthen Exp $

COMMENT=	library for delta compression of streams

V =		2.3.2
DISTNAME =	librsync-${V}

SHARED_LIBS =	rsync	5.1

CATEGORIES=	net

HOMEPAGE=	https://librsync.github.io/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += b2 c popt

MASTER_SITES =	https://github.com/librsync/librsync/releases/download/v${V}/

MODULES=	devel/cmake

LIB_DEPENDS=	devel/popt \
		security/libb2

CONFIGURE_ARGS=	-DUSE_LIBB2=ON

# There are C99 initial declarations in for loops, base-gcc needs this flag.
CFLAGS +=	-std=gnu99

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/rdiff.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/librsync.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
