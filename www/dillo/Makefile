# $OpenBSD: Makefile,v 1.10 2003/02/12 10:18:16 couderc Exp $

COMMENT=		"Fast and light gtk-based web browser"

DISTNAME=		dillo-0.6.6
CATEGORIES=     	www

HOMEPAGE=		http://dillo.auriga.wearlab.de/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/

LIB_DEPENDS=    jpeg.62::graphics/jpeg \
                png.2::graphics/png \
		gtk.1.2,gdk.1.2::x11/gtk+

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-cookies
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dillo
	${INSTALL_DATA} ${WRKSRC}/dillorc ${PREFIX}/share/examples/dillo/

.include <bsd.port.mk>
