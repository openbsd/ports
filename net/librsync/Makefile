# $OpenBSD: Makefile,v 1.18 2017/05/14 18:51:22 jca Exp $

COMMENT=	library for delta compression of streams

V=		2.0.0
REVISION=	0
DISTNAME=	librsync-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

SHARED_LIBS +=	rsync                3.0      # 2.0

CATEGORIES=	net

HOMEPAGE=	https://github.com/librsync/librsync

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c popt z

MASTER_SITES=	https://github.com/librsync/librsync/archive/

MODULES=	devel/cmake

LIB_DEPENDS=	archivers/bzip2 \
		devel/popt

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/rdiff.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/librsync.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
