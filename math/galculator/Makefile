# $OpenBSD: Makefile,v 1.13 2005/11/15 15:42:26 wilfried Exp $

COMMENT=	"GTK2-based scientific calculator"

DISTNAME=	galculator-1.2.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 atk-1.0.0.0 c fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 iconv intl m \
		pango-1.0.0.0 xml2 z cairo pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	glade-2.0.0.0::devel/libglade2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
