# $OpenBSD: Makefile,v 1.23 2005/10/12 04:02:22 fgsch Exp $

COMMENT=	"graphics and text browser with javascript support"

VER=		2.1pre19
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Federico G. Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://links.twibright.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-javascript --with-ssl --without-sdl

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		tiff.35::graphics/tiff
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x --enable-graphics
CONFIGURE_ENV= CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
	       LDFLAGS="-L${LOCALBASE}/lib"
WANTLIB+=	X11 z
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
