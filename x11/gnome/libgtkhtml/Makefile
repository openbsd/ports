# $OpenBSD: Makefile,v 1.10 2005/11/14 23:03:45 wilfried Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

DISTNAME=		libgtkhtml-2.6.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender art_lgpl_2 atk-1.0.0.0 cairo fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 glitz \
		gmodule-2.0.0.0 gnomecanvas-2 gobject-2.0.0.0 gtk-x11-2.0.0.0 \
		iconv intl m pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
		png xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtkhtml/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gailutil.17::x11/gnome/gail

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
