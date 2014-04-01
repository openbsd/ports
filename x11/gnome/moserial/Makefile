# $OpenBSD: Makefile,v 1.25 2014/04/01 18:06:31 jasper Exp $

COMMENT=		serial terminal for GNOME

GNOME_PROJECT=		moserial
GNOME_VERSION=		3.0.8
REVISION=		1

CATEGORIES=		comms

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z ffi stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS +=  desktop-file-utils  gtk-update-icon-cache yelp
.include <bsd.port.mk>
