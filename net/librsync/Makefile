# $OpenBSD: Makefile,v 1.19 2018/02/08 22:35:19 sthen Exp $

COMMENT=	library for delta compression of streams

V=		2.0.1
DISTNAME=	librsync-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

SHARED_LIBS +=	rsync                4.0      # 2.0

CATEGORIES=	net

HOMEPAGE=	https://github.com/librsync/librsync

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += b2 c popt

MASTER_SITES=	https://github.com/librsync/librsync/archive/

MODULES=	devel/cmake

LIB_DEPENDS=	devel/popt \
		security/libb2

CONFIGURE_ARGS=	-DUSE_LIBB2=ON

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/rdiff.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/librsync.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
