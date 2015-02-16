# $OpenBSD: Makefile,v 1.53 2015/02/16 22:57:13 naddy Exp $

COMMENT=	graphics and text browser
VER=		2.9
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www

HOMEPAGE=	http://links.twibright.com/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2 c crypto lzma m ssl z

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
WANTLIB+=	X11 jpeg>=62 png>=2 tiff>=35
MESSAGE=	${PKGDIR}/MESSAGE.x11
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
