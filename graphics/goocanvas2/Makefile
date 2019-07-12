# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:00 sthen Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		2.0.4
PKGNAME=		goocanvas2-${GNOME_VERSION}
REVISION=		1

SHARED_LIBS +=  goocanvas-2.0             0.0 # 12.2

CATEGORIES=		graphics

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm z

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/py-gobject3
LIB_DEPENDS=		x11/gtk+3

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
