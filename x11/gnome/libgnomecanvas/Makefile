# $OpenBSD: Makefile,v 1.38 2010/04/20 11:35:08 ajacoutot Exp $

COMMENT=	graphics library for GNOME

GNOME_PROJECT=	libgnomecanvas
GNOME_VERSION=	2.30.1

SHARED_LIBS +=	gnomecanvas-2        2002.0   # .2001.0

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z pthread-stubs xcb xcb-render xcb-render-util

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	glade-2.0.>=0::devel/libglade2 \
		art_lgpl_2.>=5::graphics/libart

USE_X11=	Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-glade
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
