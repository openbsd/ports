# $OpenBSD: Makefile,v 1.50 2011/09/20 21:10:00 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	graphics library for GNOME

GNOME_PROJECT=	libgnomecanvas
GNOME_VERSION=	2.30.3

SHARED_LIBS +=	gnomecanvas-2        2002.0   # .2001.0

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z pthread-stubs xcb xcb-render \
		gthread-2.0 glade-2.0 art_lgpl_2 GL Xxf86vm drm xcb-shm

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libglade2 \
		graphics/libart

CONFIGURE_ARGS=	--enable-glade
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
