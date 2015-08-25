# $OpenBSD: Makefile,v 1.55 2015/08/25 13:18:28 sthen Exp $

COMMENT=	graphics and text browser
VER=		2.9
REVISION=	1
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www

HOMEPAGE=	http://links.twibright.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2 c crypto lzma pthread ssl z

MASTER_SITES=	http://links.twibright.com/download/

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-ssl

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
LIB_DEPENDS+=	graphics/jpeg \
		graphics/png \
		graphics/tiff
CONFIGURE_ARGS+= --with-x --enable-graphics
WANTLIB+=	X11 jpeg>=62 m png>=2 tiff>=35
MESSAGE=	${PKGDIR}/MESSAGE.x11
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
