# $OpenBSD: Makefile,v 1.19 2005/02/24 22:24:55 fgsch Exp $

COMMENT=	"graphics and text browser with javascript support"

VER=		2.1pre16
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www
MASTER_SITES=	http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/download/

MAINTAINER=	Federico G. Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

FLAVORS=	no_x11
FLAVOR?=

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --enable-javascript --with-ssl

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
