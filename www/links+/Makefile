# $OpenBSD: Makefile,v 1.49 2013/03/11 11:44:42 espie Exp $

COMMENT=	graphics and text browser

VER=		2.7
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}

CATEGORIES=	www

HOMEPAGE=	http://links.twibright.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2>=10 c crypto lzma m ssl z

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --with-ssl --without-sdl
USE_GROFF =	Yes

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
LIB_DEPENDS+=	graphics/jpeg \
		graphics/png \
		graphics/tiff
CONFIGURE_ARGS+= --with-x --enable-graphics
WANTLIB+=	X11 jpeg>=62 png>=2 pthread-stubs tiff>=35 xcb
MESSAGE=	${PKGDIR}/MESSAGE.x11
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
