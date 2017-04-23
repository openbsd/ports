# $OpenBSD: Makefile,v 1.17 2017/04/23 22:13:36 jca Exp $

COMMENT=	library for delta compression of streams

V=		2.0.0
DISTNAME=	librsync-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

SHARED_LIBS +=	rsync                3.0      # 2.0

CATEGORIES=	net

HOMEPAGE=	http://librsync.sourceforge.net/

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
