# $OpenBSD: Makefile,v 1.16 2014/04/02 09:36:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.12.0
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs \
			x11/gnome/libgweather
RUN_DEPENDS=		x11/gnome/gjs

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache

post-install:
	rm ${PREFIX}/lib/org.gnome.Weather.Application/*.{a,la}

.include <bsd.port.mk>
