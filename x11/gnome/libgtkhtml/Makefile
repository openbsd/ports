# $OpenBSD: Makefile,v 1.14 2006/09/18 09:40:32 espie Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

DISTNAME=		libgtkhtml-2.6.3
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gtkhtml-2	0.0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender art_lgpl_2 atk-1.0.0.0 fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnomecanvas-2 gobject-2.0.0.0 gtk-x11-2.0.0.0 \
		m pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
		xml2 z cairo glitz png

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtkhtml/2.6/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gailutil.>=17::x11/gnome/gail

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
