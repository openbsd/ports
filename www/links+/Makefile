# $OpenBSD: Makefile,v 1.6 2002/12/17 05:50:51 fgsch Exp $

COMMENT=	"graphics and text browser with javascript support"

VER=		2.1pre7
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}b
CATEGORIES=	www
MASTER_SITES=	http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/download/

MAINTAINER=	Federico G. Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-javascript --with-ssl

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		tiff.35::graphics/tiff
CONFIGURE_ARGS+= --with-x --enable-graphics
CONFIGURE_ENV= CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
	       LDFLAGS="-L${LOCALBASE}/lib"
.endif

post-patch:
	cp ${FILESDIR}/auth.c ${WRKSRC}
	cd ${WRKSRC}/intl && synclang

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
