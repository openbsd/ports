# $OpenBSD: Makefile,v 1.16 2006/06/13 13:28:06 bernd Exp $

COMMENT=	"GTK2-based scientific calculator"

DISTNAME=	galculator-1.2.5.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender atk-1.0.0.0 c fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 m \
		pango-1.0.0.0 xml2 z pangocairo-1.0.0.0 cairo glitz png \
		pangoft2-1.0.0.0

MODULES=	devel/gettext

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
