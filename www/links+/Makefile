# $OpenBSD: Makefile,v 1.28 2006/10/28 22:52:13 fgsch Exp $

COMMENT=	"graphics and text browser with javascript support"

VER=		2.1pre23
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://links.twibright.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

FLAVORS=	no_x11
FLAVOR?=

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --enable-javascript --with-ssl --without-sdl

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		tiff.>=35::graphics/tiff
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x --enable-graphics
WANTLIB+=	X11 z
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
