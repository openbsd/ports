# $OpenBSD: Makefile,v 1.18 2014/04/02 09:36:11 jasper Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		2.0.2
PKGNAME=		goocanvas2-${GNOME_VERSION}

SHARED_LIBS +=  goocanvas-2.0             0.0 # 11.0
CATEGORIES=		graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += ffi ICE SM atk-bridge-2.0 atspi dbus-1 graphite2
WANTLIB += harfbuzz pthread

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	x11/gtk+3

CONFIGURE_STYLE=gnu

MODGNOME_TOOLS +=	gobject-introspection

.include <bsd.port.mk>
