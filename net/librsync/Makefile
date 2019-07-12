# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:31 sthen Exp $

COMMENT=	library for delta compression of streams

# XXX: https://github.com/librsync/librsync/issues/146
GH_ACCOUNT=	librsync
GH_PROJECT=	librsync
GH_TAGNAME=	v2.0.2

SHARED_LIBS +=	rsync                4.0      # 2.0

CATEGORIES=	net

HOMEPAGE=	https://librsync.github.io/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += b2 c popt

MODULES=	devel/cmake

LIB_DEPENDS=	devel/popt \
		security/libb2

CONFIGURE_ARGS=	-DUSE_LIBB2=ON

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/rdiff.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/librsync.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
