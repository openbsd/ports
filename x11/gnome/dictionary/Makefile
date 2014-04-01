# $OpenBSD: Makefile,v 1.10 2014/04/01 18:06:31 jasper Exp $

COMMENT=		GNOME dictionary application

GNOME_PROJECT=		gnome-dictionary
GNOME_VERSION=		3.10.0

SHARED_LIBS +=  gdict-1.0                 8.0 # 6.7

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS +=  yelp  desktop-file-utils
.include <bsd.port.mk>

