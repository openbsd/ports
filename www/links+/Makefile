# $OpenBSD: Makefile,v 1.40 2010/10/24 21:40:09 ajacoutot Exp $

COMMENT=	graphics and text browser

VER=		2.2
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	http://links.twibright.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto m ssl z

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	bz2.>=10::archivers/bzip2

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --with-ssl --without-sdl
USE_GROFF =	Yes

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		tiff.>=35::graphics/tiff
CONFIGURE_ARGS+= --with-x --enable-graphics
WANTLIB+=	X11 pthread-stubs xcb
MESSAGE=	${PKGDIR}/MESSAGE.x11
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
