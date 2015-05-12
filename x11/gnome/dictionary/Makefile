# $OpenBSD: Makefile,v 1.19 2015/05/12 06:10:20 ajacoutot Exp $

COMMENT=		GNOME dictionary application

GNOME_PROJECT=		gnome-dictionary
GNOME_VERSION=		3.16.2

SHARED_LIBS +=  gdict-1.0            9.0      # 8.0

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection yelp

.include <bsd.port.mk>

