# $OpenBSD: Makefile,v 1.25 2019/11/09 15:03:10 cwen Exp $

COMMENT=	library for delta compression of streams

V =		2.2.1
REVISION =	0
DISTNAME =	librsync-${V}

SHARED_LIBS =	rsync	5.0 # 2.1.0

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
