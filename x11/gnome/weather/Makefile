# $OpenBSD: Makefile,v 1.4 2013/05/14 06:58:43 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		weather application for GNOME

GNOME_PROJECT=		gnome-weather
GNOME_VERSION=		3.8.2

HOMEPAGE=		https://live.gnome.org/Design/Apps/Weather

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv icudata
WANTLIB += icule icuuc intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/gjs
RUN_DEPENDS=		x11/gnome/gjs

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		gi
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

post-install:
	rm ${PREFIX}/lib/gnome-weather/*.la

.include <bsd.port.mk>
