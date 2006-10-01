# $OpenBSD: Makefile,v 1.24 2006/10/01 12:35:47 jasper Exp $

COMMENT=		"Fast and light gtk-based web browser"

VERSION=		0.8.6
DISTNAME=		dillo-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	www

HOMEPAGE=		http://www.dillo.org/

MAINTAINER=		Jim Uhl <juhl@mala.bc.ca>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto glib gmodule iconv intl m \
			pthread ssl stdc++ z 

MASTER_SITES=		${HOMEPAGE}download/

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=    jpeg.>=62::graphics/jpeg \
                png.>=2::graphics/png \
		gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-cookies --enable-ipv6 --disable-dlgui
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
