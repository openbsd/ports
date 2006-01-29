# $OpenBSD: Makefile,v 1.21 2006/01/29 00:21:56 couderc Exp $

BROKEN=			"broken memory allocation in dpi"

COMMENT=		"Fast and light gtk-based web browser"

VERSION=		0.8.3
DISTNAME=		dillo-${VERSION}
CATEGORIES=     	www

HOMEPAGE=		http://www.dillo.org/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto glib gmodule iconv intl m \
			pthread ssl z 

MASTER_SITES=		${HOMEPAGE}download/

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=    jpeg.62::graphics/jpeg \
                png.2::graphics/png \
		gtk.1.2,gdk.1.2::x11/gtk+

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-cookies --enable-ipv6
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
